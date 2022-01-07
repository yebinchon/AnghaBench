; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_init_obj_allocator_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_init_obj_allocator_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [56 x i8] c"Unable to create bitmap (%d entries) for allocator '%s'\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"skipping %s %d\00", align 1
@netmap_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s free %u\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: no objects available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_pool*)* @netmap_init_obj_allocator_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_init_obj_allocator_bitmap(%struct.netmap_obj_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_obj_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %3, align 8
  %6 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %7 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %12 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 31
  %15 = sdiv i32 %14, 32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32* @nm_os_malloc(i32 %19)
  %21 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %22 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %10
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %30 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %129

34:                                               ; preds = %10
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %49

38:                                               ; preds = %1
  %39 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %40 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %41, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %38, %34
  %50 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %51 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %50, i32 0, i32 3
  store i32 0, i32* %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %99, %49
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %55 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %52
  %59 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %60 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %65 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @nm_isset(i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i32, i32* @netmap_debug, align 4
  %72 = load i32, i32* @NM_DEBUG_MEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %77 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @nm_prinf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  br label %99

82:                                               ; preds = %63, %58
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 31
  %85 = shl i32 1, %84
  %86 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %87 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = ashr i32 %89, 5
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %85
  store i32 %94, i32* %92, align 4
  %95 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %96 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %82, %81
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %52

102:                                              ; preds = %52
  %103 = load i64, i64* @netmap_verbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %107 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %110 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @nm_prinf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %115 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i64, i64* @netmap_verbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %123 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* @ENOMEM, align 4
  store i32 %127, i32* %2, align 4
  br label %129

128:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %126, %27
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32* @nm_os_malloc(i32) #1

declare dso_local i32 @nm_prerr(i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @nm_isset(i64, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
