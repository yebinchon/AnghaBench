; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_map_free_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_map_free_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.AdapterControlBlock = type { i32, i64, i64, i64, %struct.CommandControlBlock**, %struct.CommandControlBlock**, i32, i32, i64, %struct.TYPE_4__ }
%struct.CommandControlBlock = type { i64, i32, i32, %struct.AdapterControlBlock*, i32 }
%struct.TYPE_4__ = type { i64 }

@ARCMSR_MAX_FREESRB_NUM = common dso_local global i32 0, align 4
@ACB_F_MAPFREESRB_FAILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"arcmsr%d: srb dmamap bus_dmamap_create error\0A\00", align 1
@ACB_ADAPTER_TYPE_C = common dso_local global i64 0, align 8
@ACB_ADAPTER_TYPE_D = common dso_local global i64 0, align 8
@ACB_ADAPTER_TYPE_E = common dso_local global i64 0, align 8
@SRB_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @arcmsr_map_free_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_map_free_srb(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.AdapterControlBlock*, align 8
  %10 = alloca %struct.CommandControlBlock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %14, %struct.AdapterControlBlock** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %23 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %25, %struct.CommandControlBlock** %10, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %110, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ARCMSR_MAX_FREESRB_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %113

30:                                               ; preds = %26
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %35 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %34, i32 0, i32 4
  %36 = call i64 @bus_dmamap_create(i32 %33, i32 0, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i32, i32* @ACB_F_MAPFREESRB_FAILD, align 4
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %131

48:                                               ; preds = %30
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %50 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACB_ADAPTER_TYPE_C, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %56 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACB_ADAPTER_TYPE_D, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %62 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACB_ADAPTER_TYPE_E, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60, %54, %48
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %69 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = lshr i64 %70, 16
  %72 = lshr i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %75 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %81

76:                                               ; preds = %60
  %77 = load i64, i64* %12, align 8
  %78 = lshr i64 %77, 5
  %79 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %80 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %66
  %82 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %83 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %84 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %83, i32 0, i32 3
  store %struct.AdapterControlBlock* %82, %struct.AdapterControlBlock** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %85, 16
  %87 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %88 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %90 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %91 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %90, i32 0, i32 4
  %92 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %92, i64 %94
  store %struct.CommandControlBlock* %89, %struct.CommandControlBlock** %95, align 8
  %96 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %97 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %96, i32 0, i32 5
  %98 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %98, i64 %100
  store %struct.CommandControlBlock* %89, %struct.CommandControlBlock** %101, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @SRB_SIZE, align 8
  %104 = add i64 %102, %103
  store i64 %104, i64* %12, align 8
  %105 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %106 = ptrtoint %struct.CommandControlBlock* %105 to i64
  %107 = load i64, i64* @SRB_SIZE, align 8
  %108 = add i64 %106, %107
  %109 = inttoptr i64 %108 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %109, %struct.CommandControlBlock** %10, align 8
  br label %110

110:                                              ; preds = %81
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %26

113:                                              ; preds = %26
  %114 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %115 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ACB_ADAPTER_TYPE_E, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %121 = ptrtoint %struct.CommandControlBlock* %120 to i64
  %122 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %123 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %113
  %125 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %10, align 8
  %126 = ptrtoint %struct.CommandControlBlock* %125 to i64
  %127 = load i64, i64* %12, align 8
  %128 = sub i64 %126, %127
  %129 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %9, align 8
  %130 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %124, %38
  ret void
}

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
