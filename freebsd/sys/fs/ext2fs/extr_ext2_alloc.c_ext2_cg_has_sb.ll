; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_has_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_has_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EXT2F_COMPAT_SPARSESUPER2 = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_SPARSESUPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_cg_has_sb(%struct.m_ext2fs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %14 = load i32, i32* @EXT2F_COMPAT_SPARSESUPER2, align 4
  %15 = call i64 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %20 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %18, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %17
  store i32 1, i32* %3, align 4
  br label %90

38:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %90

39:                                               ; preds = %12
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %44 = load i32, i32* @EXT2F_ROCOMPAT_SPARSESUPER, align 4
  %45 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %39
  store i32 1, i32* %3, align 4
  br label %90

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %90

53:                                               ; preds = %48
  store i32 3, i32* %6, align 4
  store i32 5, i32* %7, align 4
  store i32 7, i32* %8, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = phi i1 [ true, %58 ], [ true, %54 ], [ %65, %62 ]
  br i1 %67, label %68, label %89

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72, %68
  store i32 1, i32* %3, align 4
  br label %90

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 3
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 5
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 7
  store i32 %88, i32* %8, align 4
  br label %54

89:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %80, %52, %47, %38, %37, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
