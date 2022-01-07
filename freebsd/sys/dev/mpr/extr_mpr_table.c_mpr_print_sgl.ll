; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_table.c_mpr_print_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_table.c_mpr_print_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_command = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mpr_chain = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"SGL for command %p\0A\00", align 1
@MPR_CM_FLAGS_SGE_SIMPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"IEEE seg%d flags=0x%02x len=0x%08x addr=0x%016jx\0A\00", align 1
@MPI25_IEEE_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"IEEE chain flags=0x%x len=0x%x Offset=0x%x Address=0x%016jx\0A\00", align 1
@chain_link = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"seg%d flags=0x%02x len=0x%06x addr=0x%016jx\0A\00", align 1
@MPI2_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpr_print_sgl(%struct.mpr_softc* %0, %struct.mpr_command* %1, i32 %2) #0 {
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca %struct.mpr_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mpr_chain*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.mpr_chain* null, %struct.mpr_chain** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %17 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %21 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %7, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %9, align 8
  %36 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.mpr_command* %36)
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @hexdump(i8* %38, i32 128, i32* null, i32 0)
  br label %40

40:                                               ; preds = %118, %3
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %45 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MPR_CM_FLAGS_SGE_SIMPLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %43, %40
  %52 = phi i1 [ false, %40 ], [ %50, %43 ]
  br i1 %52, label %53, label %119

53:                                               ; preds = %51
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32toh(i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @mpr_to_u64(i32* %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @MPI25_IEEE_SGE_FLAGS_END_OF_LIST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %119

73:                                               ; preds = %53
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 1
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %73
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = bitcast %struct.TYPE_5__* %83 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %8, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32toh(i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = call i32 @mpr_to_u64(i32* %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %91, i32 %94, i32 %97)
  %99 = load %struct.mpr_chain*, %struct.mpr_chain** %11, align 8
  %100 = icmp eq %struct.mpr_chain* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %82
  %102 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %103 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %102, i32 0, i32 1
  %104 = call %struct.mpr_chain* @TAILQ_FIRST(i32* %103)
  store %struct.mpr_chain* %104, %struct.mpr_chain** %11, align 8
  br label %109

105:                                              ; preds = %82
  %106 = load %struct.mpr_chain*, %struct.mpr_chain** %11, align 8
  %107 = load i32, i32* @chain_link, align 4
  %108 = call %struct.mpr_chain* @TAILQ_NEXT(%struct.mpr_chain* %106, i32 %107)
  store %struct.mpr_chain* %108, %struct.mpr_chain** %11, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.mpr_chain*, %struct.mpr_chain** %11, align 8
  %111 = getelementptr inbounds %struct.mpr_chain, %struct.mpr_chain* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = bitcast i8* %114 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %7, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @hexdump(i8* %116, i32 128, i32* null, i32 0)
  br label %118

118:                                              ; preds = %109, %73
  br label %40

119:                                              ; preds = %72, %51
  br label %120

120:                                              ; preds = %157, %119
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %125 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MPR_CM_FLAGS_SGE_SIMPLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br label %130

130:                                              ; preds = %123, %120
  %131 = phi i1 [ false, %120 ], [ %129, %123 ]
  br i1 %131, label %132, label %162

132:                                              ; preds = %130
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32toh(i32 %135)
  %137 = load i32, i32* @MPI2_SGE_FLAGS_SHIFT, align 4
  %138 = ashr i32 %136, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32toh(i32 %143)
  %145 = and i32 %144, 16777215
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = call i32 @mpr_to_u64(i32* %147)
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %140, i32 %145, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_LIST, align 4
  %152 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %132
  br label %162

157:                                              ; preds = %132
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 1
  store %struct.TYPE_4__* %159, %struct.TYPE_4__** %9, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %120

162:                                              ; preds = %156, %130
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i32, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mpr_to_u64(i32*) #1

declare dso_local %struct.mpr_chain* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.mpr_chain* @TAILQ_NEXT(%struct.mpr_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
