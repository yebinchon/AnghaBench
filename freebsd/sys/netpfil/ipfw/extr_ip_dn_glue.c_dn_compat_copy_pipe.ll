; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_copy_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_copy_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i32, i32* }
%struct.dn_schk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DN_HAVE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"have %d < need %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_compat_copy_pipe(%struct.copy_args* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.copy_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dn_schk*, align 8
  store %struct.copy_args* %0, %struct.copy_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %13 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %16 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.dn_schk*
  store %struct.dn_schk* %21, %struct.dn_schk** %11, align 8
  %22 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %23 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DN_HAVE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %31 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dn_ht_entries(i64 %32)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %36 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i32 [ %33, %29 ], [ %40, %34 ]
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @D(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  store i32 1, i32* %3, align 4
  br label %86

55:                                               ; preds = %41
  %56 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %57 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dn_c_copy_pipe(%struct.dn_schk* %56, %struct.copy_args* %57, i32 %58)
  %60 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %61 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DN_HAVE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %69 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %72 = call i32 @dn_ht_scan(i64 %70, i32 (i64, %struct.copy_args*)* @dn_c_copy_q, %struct.copy_args* %71)
  br label %85

73:                                               ; preds = %55
  %74 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %75 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.dn_schk*, %struct.dn_schk** %11, align 8
  %80 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %83 = call i32 @dn_c_copy_q(i64 %81, %struct.copy_args* %82)
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84, %67
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %51
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dn_ht_entries(i64) #1

declare dso_local i32 @D(i8*, i32, i32) #1

declare dso_local i32 @dn_c_copy_pipe(%struct.dn_schk*, %struct.copy_args*, i32) #1

declare dso_local i32 @dn_ht_scan(i64, i32 (i64, %struct.copy_args*)*, %struct.copy_args*) #1

declare dso_local i32 @dn_c_copy_q(i64, %struct.copy_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
