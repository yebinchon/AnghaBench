; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_alloc_unit_by_id_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_alloc_unit_by_id_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_server = type { i32 }

@CUSE_DEVICES_MAX = common dso_local global i32 0, align 4
@cuse_alloc_unit = common dso_local global %struct.cuse_server** null, align 8
@cuse_alloc_unit_id = common dso_local global i32* null, align 8
@CUSE_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_server*, i32)* @cuse_alloc_unit_by_id_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_alloc_unit_by_id_locked(%struct.cuse_server* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cuse_server*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cuse_server* %0, %struct.cuse_server** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %53, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %49, %9
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CUSE_DEVICES_MAX, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.cuse_server**, %struct.cuse_server*** @cuse_alloc_unit, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cuse_server*, %struct.cuse_server** %15, i64 %17
  %19 = load %struct.cuse_server*, %struct.cuse_server** %18, align 8
  %20 = icmp ne %struct.cuse_server* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = load i32*, i32** @cuse_alloc_unit_id, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = xor i32 %26, %27
  %29 = load i32, i32* @CUSE_ID_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %49

33:                                               ; preds = %21
  %34 = load i32*, i32** @cuse_alloc_unit_id, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CUSE_ID_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %33
  br label %48

48:                                               ; preds = %47, %14
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %10
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %9, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CUSE_DEVICES_MAX, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.cuse_server**, %struct.cuse_server*** @cuse_alloc_unit, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cuse_server*, %struct.cuse_server** %65, i64 %67
  %69 = load %struct.cuse_server*, %struct.cuse_server** %68, align 8
  %70 = icmp eq %struct.cuse_server* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.cuse_server*, %struct.cuse_server** %4, align 8
  %73 = load %struct.cuse_server**, %struct.cuse_server*** @cuse_alloc_unit, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cuse_server*, %struct.cuse_server** %73, i64 %75
  store %struct.cuse_server* %72, %struct.cuse_server** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %77, %78
  %80 = load i32*, i32** @cuse_alloc_unit_id, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %60

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %89, %56
  store i32 -1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
