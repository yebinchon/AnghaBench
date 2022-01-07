; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_copy_data_helper_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_copy_data_helper_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_args = type { i64 }
%struct.dn_schk = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dn_fsk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DN_COMPAT_PIPE = common dso_local global i64 0, align 8
@DN_MAX_ID = common dso_local global i64 0, align 8
@DNHT_SCAN_END = common dso_local global i32 0, align 4
@DN_COMPAT_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_data_helper_compat(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.copy_args*, align 8
  %7 = alloca %struct.dn_schk*, align 8
  %8 = alloca %struct.dn_fsk*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.copy_args*
  store %struct.copy_args* %10, %struct.copy_args** %6, align 8
  %11 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %12 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DN_COMPAT_PIPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.dn_schk*
  store %struct.dn_schk* %18, %struct.dn_schk** %7, align 8
  %19 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %20 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %27 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DN_MAX_ID, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %16
  store i32 0, i32* %3, align 4
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @dn_compat_copy_pipe(%struct.copy_args* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %33
  br label %66

41:                                               ; preds = %2
  %42 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %43 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DN_COMPAT_QUEUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = bitcast i8* %48 to %struct.dn_fsk*
  store %struct.dn_fsk* %49, %struct.dn_fsk** %8, align 8
  %50 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %51 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DN_MAX_ID, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %67

57:                                               ; preds = %47
  %58 = load %struct.copy_args*, %struct.copy_args** %6, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @dn_compat_copy_queue(%struct.copy_args* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DNHT_SCAN_END, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %40
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %62, %56, %38, %32
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @dn_compat_copy_pipe(%struct.copy_args*, i8*) #1

declare dso_local i64 @dn_compat_copy_queue(%struct.copy_args*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
