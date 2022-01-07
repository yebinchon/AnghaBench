; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_add_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_add_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_devinfo = type { i32 }
%struct.macio_reg = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"layout-id\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.macio_devinfo*)* @macio_add_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_add_reg(i64 %0, %struct.macio_devinfo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.macio_devinfo*, align 8
  %5 = alloca %struct.macio_reg*, align 8
  %6 = alloca %struct.macio_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.macio_devinfo* %1, %struct.macio_devinfo** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %3, align 8
  %14 = bitcast %struct.macio_reg** %5 to i8**
  %15 = call i32 @OF_getprop_alloc_multi(i64 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 16, i8** %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %126

19:                                               ; preds = %2
  %20 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %21 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %20, i64 0
  %22 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @OF_child(i64 %26)
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %42, %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %34 = call i32 (i64, i8*, ...) @OF_getprop(i64 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33, i64 8)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37, %31
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @OF_peer(i64 %43)
  store i64 %44, i64* %7, align 8
  br label %28

45:                                               ; preds = %41, %28
  %46 = load i64, i64* %7, align 8
  %47 = call i32 (i64, i8*, ...) @OF_getprop(i64 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %10, i64 4)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 76
  br i1 %55, label %56, label %86

56:                                               ; preds = %53, %50
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @OF_parent(i64 %57)
  %59 = bitcast %struct.macio_reg** %6 to i8**
  %60 = call i32 @OF_getprop_alloc_multi(i64 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 16, i8** %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %62 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %61, i64 0
  %63 = load %struct.macio_reg*, %struct.macio_reg** %6, align 8
  %64 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %63, i64 0
  %65 = bitcast %struct.macio_reg* %62 to i8*
  %66 = bitcast %struct.macio_reg* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load %struct.macio_reg*, %struct.macio_reg** %6, align 8
  %68 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %67, i64 1
  %69 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %72 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %71, i64 1
  %73 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.macio_reg*, %struct.macio_reg** %6, align 8
  %75 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %74, i64 1
  %76 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %79 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %78, i64 1
  %80 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %77, %81
  %83 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %84 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %83, i64 2
  %85 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %56, %53, %45
  br label %87

87:                                               ; preds = %86, %19
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %123, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %88
  %93 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %94 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %93, i32 0, i32 0
  %95 = load i32, i32* @SYS_RES_MEMORY, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %97, i64 %99
  %101 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %103, i64 %105
  %107 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %109, i64 %111
  %113 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %108, %114
  %116 = load %struct.macio_reg*, %struct.macio_reg** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %116, i64 %118
  %120 = getelementptr inbounds %struct.macio_reg, %struct.macio_reg* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @resource_list_add(i32* %94, i32 %95, i32 %96, i64 %102, i64 %115, i64 %121)
  br label %123

123:                                              ; preds = %92
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %88

126:                                              ; preds = %18, %88
  ret void
}

declare dso_local i32 @OF_getprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_parent(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
