; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_setup_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_setup_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.amr_command = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amr_sg64entry*, %struct.amr_sgentry* }
%struct.amr_sg64entry = type { i32, i32 }
%struct.amr_sgentry = type { i32, i32 }

@AMR_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AMR_CMD_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @amr_setup_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_setup_sg(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amr_command*, align 8
  %10 = alloca %struct.amr_sgentry*, align 8
  %11 = alloca %struct.amr_sg64entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.amr_command*
  store %struct.amr_command* %15, %struct.amr_command** %9, align 8
  %16 = call i32 @debug_called(i32 3)
  %17 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %18 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.amr_sgentry*, %struct.amr_sgentry** %19, align 8
  store %struct.amr_sgentry* %20, %struct.amr_sgentry** %10, align 8
  %21 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %22 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.amr_sg64entry*, %struct.amr_sg64entry** %23, align 8
  store %struct.amr_sg64entry* %24, %struct.amr_sg64entry** %11, align 8
  %25 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %26 = call i64 @AC_IS_SG64(%struct.amr_command* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %31 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %33 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %55, %28
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.amr_sg64entry*, %struct.amr_sg64entry** %11, align 8
  %46 = getelementptr inbounds %struct.amr_sg64entry, %struct.amr_sg64entry* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.amr_sg64entry*, %struct.amr_sg64entry** %11, align 8
  %54 = getelementptr inbounds %struct.amr_sg64entry, %struct.amr_sg64entry* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load %struct.amr_sg64entry*, %struct.amr_sg64entry** %11, align 8
  %59 = getelementptr inbounds %struct.amr_sg64entry, %struct.amr_sg64entry* %58, i32 1
  store %struct.amr_sg64entry* %59, %struct.amr_sg64entry** %11, align 8
  br label %34

60:                                               ; preds = %34
  br label %110

61:                                               ; preds = %4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %66 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %72 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %109

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %76 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %78 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %81 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %103, %73
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amr_sgentry*, %struct.amr_sgentry** %10, align 8
  %94 = getelementptr inbounds %struct.amr_sgentry, %struct.amr_sgentry* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.amr_sgentry*, %struct.amr_sgentry** %10, align 8
  %102 = getelementptr inbounds %struct.amr_sgentry, %struct.amr_sgentry* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %86
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = load %struct.amr_sgentry*, %struct.amr_sgentry** %10, align 8
  %107 = getelementptr inbounds %struct.amr_sgentry, %struct.amr_sgentry* %106, i32 1
  store %struct.amr_sgentry* %107, %struct.amr_sgentry** %10, align 8
  br label %82

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109, %60
  store i32 0, i32* %12, align 4
  %111 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %112 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AMR_CMD_DATAIN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %123 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %134 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %137 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @bus_dmamap_sync(i32 %135, i32 %138, i32 %139)
  %141 = load i32, i32* @AMR_CMD_MAPPED, align 4
  %142 = load %struct.amr_command*, %struct.amr_command** %9, align 8
  %143 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @AC_IS_SG64(%struct.amr_command*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
