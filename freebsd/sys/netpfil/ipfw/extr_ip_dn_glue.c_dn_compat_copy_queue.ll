; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_copy_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_compat_copy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i32, i32* }
%struct.dn_fsk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DN_HAVE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"have < need\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_compat_copy_queue(%struct.copy_args* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.copy_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_fsk*, align 8
  %11 = alloca i32, align 4
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
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.dn_fsk*
  store %struct.dn_fsk* %21, %struct.dn_fsk** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %23 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DN_HAVE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %31 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dn_ht_entries(i64 %32)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %36 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i32 [ %33, %29 ], [ %40, %34 ]
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = call i32 @D(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

53:                                               ; preds = %41
  %54 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %55 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @dn_c_copy_fs(%struct.dn_fsk* %54, %struct.copy_args* %55, i32 %56)
  %58 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %59 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DN_HAVE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %67 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %70 = call i32 @dn_ht_scan(i64 %68, i32 (i64, %struct.copy_args*)* @dn_c_copy_q, %struct.copy_args* %69)
  br label %83

71:                                               ; preds = %53
  %72 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %73 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.dn_fsk*, %struct.dn_fsk** %10, align 8
  %78 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.copy_args*, %struct.copy_args** %4, align 8
  %81 = call i32 @dn_c_copy_q(i64 %79, %struct.copy_args* %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %65
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dn_ht_entries(i64) #1

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @dn_c_copy_fs(%struct.dn_fsk*, %struct.copy_args*, i32) #1

declare dso_local i32 @dn_ht_scan(i64, i32 (i64, %struct.copy_args*)*, %struct.copy_args*) #1

declare dso_local i32 @dn_c_copy_q(i64, %struct.copy_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
