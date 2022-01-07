; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@vesa_adp_info = common dso_local global %struct.TYPE_2__* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"VESA: v%d.%d, %dk memory, flags:0x%x, mode table:%p (%x)\0A\00", align 1
@vesa_vmodetab = common dso_local global i32* null, align 8
@vesa_oemstr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"VESA: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"VESA: %s %s %s\0A\00", align 1
@vesa_venderstr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@vesa_prodstr = common dso_local global i8* null, align 8
@vesa_revstr = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_VESA_BASE = common dso_local global i32 0, align 4
@M_VESA_MODE_MAX = common dso_local global i32 0, align 4
@V_MODEGRAPHICS = common dso_local global i32 0, align 4
@V_MODELFB = common dso_local global i32 0, align 4
@V_MODEOPTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vesa_bios_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 12
  %13 = mul nsw i32 %12, 10
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 3840
  %16 = ashr i32 %15, 8
  %17 = add nsw i32 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 240
  %20 = ashr i32 %19, 4
  %21 = mul nsw i32 %20, 10
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 15
  %24 = add nsw i32 %21, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 64
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp_info, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @vesa_vmodetab, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp_info, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24, i32 %28, i32 %31, i32* %32, i32 %35)
  %37 = load i8*, i8** @vesa_oemstr, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %10
  %40 = load i8*, i8** @vesa_oemstr, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %10
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %77

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 512
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load i8*, i8** @vesa_venderstr, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8*, i8** @vesa_venderstr, align 8
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %58 ]
  %61 = load i8*, i8** @vesa_prodstr, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** @vesa_prodstr, align 8
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i8* [ %64, %63 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %65 ]
  %68 = load i8*, i8** @vesa_revstr, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i8*, i8** @vesa_revstr, align 8
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i8* [ %71, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %72 ]
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %67, i8* %74)
  br label %76

76:                                               ; preds = %73, %50, %47
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
