; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_request = type { i32, i32, %struct.bio*, i32, i32, i32 }
%struct.bio = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@TWE_STATE_CTLR_BUSY = common dso_local global i32 0, align 4
@TWE_STATE_FRZN = common dso_local global i32 0, align 4
@twe_completeio = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@TWE_CMD_DATAIN = common dso_local global i32 0, align 4
@TWE_OP_READ = common dso_local global i32 0, align 4
@TWE_CMD_DATAOUT = common dso_local global i32 0, align 4
@TWE_OP_WRITE = common dso_local global i32 0, align 4
@TWE_BLOCK_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TWE_CMD_ERROR = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@TWE_CMD_SLEEPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twe_startio(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca %struct.twe_request*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %7 = call i32 @debug_called(i32 4)
  %8 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %9 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %8)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TWE_STATE_CTLR_BUSY, align 4
  %14 = load i32, i32* @TWE_STATE_FRZN, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %163

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %162, %19
  %21 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %22 = call %struct.twe_request* @twe_dequeue_ready(%struct.twe_softc* %21)
  store %struct.twe_request* %22, %struct.twe_request** %3, align 8
  %23 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %24 = icmp eq %struct.twe_request* %23, null
  br i1 %24, label %25, label %110

25:                                               ; preds = %20
  %26 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %27 = call i64 @twe_get_request(%struct.twe_softc* %26, %struct.twe_request** %3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %163

30:                                               ; preds = %25
  %31 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %32 = call %struct.bio* @twe_dequeue_bio(%struct.twe_softc* %31)
  store %struct.bio* %32, %struct.bio** %5, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %36 = call i32 @twe_release_request(%struct.twe_request* %35)
  br label %163

37:                                               ; preds = %30
  %38 = load i32, i32* @twe_completeio, align 4
  %39 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %40 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %43 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %42, i32 0, i32 2
  store %struct.bio* %41, %struct.bio** %43, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %48 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %53 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %55 = call %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request* %54)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BIO_READ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %37
  %62 = load i32, i32* @TWE_CMD_DATAIN, align 4
  %63 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %64 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @TWE_OP_READ, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 4
  br label %81

71:                                               ; preds = %37
  %72 = load i32, i32* @TWE_CMD_DATAOUT, align 4
  %73 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %74 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @TWE_OP_WRITE, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %61
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 3, i32* %84, align 4
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %94 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @TWE_BLOCK_SIZE, align 4
  %100 = sdiv i32 %98, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %81, %20
  %111 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %112 = icmp eq %struct.twe_request* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %163

114:                                              ; preds = %110
  %115 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %116 = call i32 @twe_map_request(%struct.twe_request* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %114
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EBUSY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %163

124:                                              ; preds = %119
  %125 = load i32, i32* @TWE_CMD_ERROR, align 4
  %126 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %127 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %129 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %128, i32 0, i32 2
  %130 = load %struct.bio*, %struct.bio** %129, align 8
  %131 = icmp ne %struct.bio* %130, null
  br i1 %131, label %132, label %150

132:                                              ; preds = %124
  %133 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %134 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %133, i32 0, i32 2
  %135 = load %struct.bio*, %struct.bio** %134, align 8
  store %struct.bio* %135, %struct.bio** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.bio*, %struct.bio** %5, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @BIO_ERROR, align 4
  %140 = load %struct.bio*, %struct.bio** %5, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %145 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %144, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %145, align 8
  %146 = load %struct.bio*, %struct.bio** %5, align 8
  %147 = call i32 @twed_intr(%struct.bio* %146)
  %148 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %149 = call i32 @twe_release_request(%struct.twe_request* %148)
  br label %161

150:                                              ; preds = %124
  %151 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %152 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @TWE_CMD_SLEEPER, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %159 = call i32 @wakeup_one(%struct.twe_request* %158)
  br label %160

160:                                              ; preds = %157, %150
  br label %161

161:                                              ; preds = %160, %132
  br label %162

162:                                              ; preds = %161, %114
  br label %20

163:                                              ; preds = %18, %123, %113, %34, %29
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local %struct.twe_request* @twe_dequeue_ready(%struct.twe_softc*) #1

declare dso_local i64 @twe_get_request(%struct.twe_softc*, %struct.twe_request**) #1

declare dso_local %struct.bio* @twe_dequeue_bio(%struct.twe_softc*) #1

declare dso_local i32 @twe_release_request(%struct.twe_request*) #1

declare dso_local %struct.TYPE_5__* @TWE_FIND_COMMAND(%struct.twe_request*) #1

declare dso_local i32 @twe_map_request(%struct.twe_request*) #1

declare dso_local i32 @twed_intr(%struct.bio*) #1

declare dso_local i32 @wakeup_one(%struct.twe_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
