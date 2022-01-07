; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [65 x i8] c"efi variables not supported on this system. root? kldload efirt?\00", align 1
@opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @efi_variables_supported()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @errx(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 @memset(%struct.TYPE_3__* @opts, i32 0, i32 4)
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @parse_args(i32 %12, i8** %13)
  %15 = call i32 (...) @read_vars()
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 17), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 0), align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 0), align 8
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 16), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 15), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 14), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 13), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 12), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 1), align 8
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ -1, %34 ]
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 10), align 8
  %38 = call i32 @make_boot_var(i8* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %36, i64 %37)
  br label %90

39:                                               ; preds = %10
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 10), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 11), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42, %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 1), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 10), align 8
  %48 = call i32 @handle_activity(i32 %46, i64 %47)
  br label %89

49:                                               ; preds = %42
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 9), align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 9), align 8
  %54 = call i32 @set_boot_order(i32* %53)
  br label %88

55:                                               ; preds = %49
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 8), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 1), align 8
  %60 = call i32 @handle_bootnext(i32 %59)
  br label %87

61:                                               ; preds = %55
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 7), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @del_bootnext()
  br label %86

66:                                               ; preds = %61
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 6), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 1), align 8
  %71 = call i32 @delete_bootvar(i32 %70)
  br label %85

72:                                               ; preds = %66
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 5), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @delete_timeout()
  br label %84

77:                                               ; preds = %72
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 4), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 3), align 8
  %82 = call i32 @handle_timeout(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %58
  br label %88

88:                                               ; preds = %87, %52
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @opts, i32 0, i32 2), align 4
  %92 = call i32 @print_boot_vars(i32 %91)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @efi_variables_supported(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @read_vars(...) #1

declare dso_local i32 @make_boot_var(i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @handle_activity(i32, i64) #1

declare dso_local i32 @set_boot_order(i32*) #1

declare dso_local i32 @handle_bootnext(i32) #1

declare dso_local i32 @del_bootnext(...) #1

declare dso_local i32 @delete_bootvar(i32) #1

declare dso_local i32 @delete_timeout(...) #1

declare dso_local i32 @handle_timeout(i32) #1

declare dso_local i32 @print_boot_vars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
