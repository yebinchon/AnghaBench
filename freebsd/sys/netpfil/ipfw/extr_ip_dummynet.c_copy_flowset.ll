; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_flowset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_copy_flowset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i32, i64* }
%struct.dn_fsk = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dn_fs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"flowset %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"flowset\00", align 1
@DNHT_SCAN_END = common dso_local global i32 0, align 4
@DN_QHT_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.copy_args*, %struct.dn_fsk*, i32)* @copy_flowset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_flowset(%struct.copy_args* %0, %struct.dn_fsk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.copy_args*, align 8
  %6 = alloca %struct.dn_fsk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_fs*, align 8
  store %struct.copy_args* %0, %struct.copy_args** %5, align 8
  store %struct.dn_fsk* %1, %struct.dn_fsk** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %10 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dn_fs*
  store %struct.dn_fs* %13, %struct.dn_fs** %8, align 8
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %15 = icmp ne %struct.dn_fsk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %19 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %24 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %27 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %30 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %29, i32 0, i32 1
  %31 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %32 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @copy_obj(i64* %25, i32 %28, %struct.TYPE_4__* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %38, i32* %4, align 4
  br label %71

39:                                               ; preds = %17
  %40 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %41 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DN_QHT_HASH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %49 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dn_ht_entries(i64 %50)
  br label %59

52:                                               ; preds = %39
  %53 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %54 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  br label %59

59:                                               ; preds = %52, %47
  %60 = phi i32 [ %51, %47 ], [ %58, %52 ]
  %61 = load %struct.dn_fs*, %struct.dn_fs** %8, align 8
  %62 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %68 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %69 = call i32 @copy_q(%struct.copy_args* %67, %struct.dn_fsk* %68, i32 0)
  br label %70

70:                                               ; preds = %66, %59
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %37, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ND(i8*, i32) #1

declare dso_local i64 @copy_obj(i64*, i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dn_ht_entries(i64) #1

declare dso_local i32 @copy_q(%struct.copy_args*, %struct.dn_fsk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
