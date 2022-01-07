; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_hammer_time_xen_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_hammer_time_xen_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@XEN_PV_DOMAIN = common dso_local global i32 0, align 4
@xen_domain_type = common dso_local global i32 0, align 4
@VM_GUEST_XEN = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ERROR: invalid start_info or xen stack, halting\0A\00", align 1
@SHUTDOWN_crash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"FreeBSD PVH running on %s\0A\00", align 1
@KERNBASE = common dso_local global i64 0, align 8
@legacy_start_info = common dso_local global %struct.TYPE_4__* null, align 8
@HYPERVISOR_shared_info = common dso_local global i32* null, align 8
@PG_V = common dso_local global i64 0, align 8
@PG_RW = common dso_local global i64 0, align 8
@PG_U = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i64 0, align 8
@xen_legacy_init_ops = common dso_local global i32 0, align 4
@init_ops = common dso_local global i32 0, align 4
@xen_apic_ops = common dso_local global i32 0, align 4
@apic_ops = common dso_local global i32 0, align 4
@legacy_info = common dso_local global i32 0, align 4
@hypervisor_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hammer_time_xen_legacy(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %8, align 8
  %24 = load i32, i32* @XEN_PV_DOMAIN, align 4
  store i32 %24, i32* @xen_domain_type, align 4
  %25 = load i32, i32* @VM_GUEST_XEN, align 4
  store i32 %25, i32* @vm_guest, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %2
  %32 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @SHUTDOWN_crash, align 4
  %34 = call i32 @HYPERVISOR_shutdown(i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = mul nsw i32 3, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* @KERNBASE, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** @legacy_start_info, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KERNBASE, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** @HYPERVISOR_shared_info, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %122, %35
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %125

61:                                               ; preds = %54
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = ptrtoint i64* %63 to i64
  %65 = load i64, i64* @KERNBASE, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i64*, i64** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  %71 = load i64, i64* @PG_V, align 8
  %72 = load i64, i64* @PG_RW, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* @PG_U, align 8
  %75 = or i64 %73, %74
  %76 = load i64*, i64** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %75
  store i64 %81, i64* %79, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = ptrtoint i64* %83 to i64
  %85 = load i64, i64* @KERNBASE, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64*, i64** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load i64, i64* @PG_V, align 8
  %92 = load i64, i64* @PG_RW, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @PG_U, align 8
  %95 = or i64 %93, %94
  %96 = load i64*, i64** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %95
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %102, 2097152
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i64, i64* @PG_V, align 8
  %110 = load i64, i64* @PG_RW, align 8
  %111 = or i64 %109, %110
  %112 = load i64, i64* @PG_PS, align 8
  %113 = or i64 %111, %112
  %114 = load i64, i64* @PG_U, align 8
  %115 = or i64 %113, %114
  %116 = load i64*, i64** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %115
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %61
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %54

125:                                              ; preds = %54
  %126 = load i64*, i64** %6, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = ptrtoint i64* %127 to i64
  %129 = load i64, i64* @KERNBASE, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 @load_cr3(i64 %130)
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @KERNBASE, align 8
  %134 = add nsw i64 %132, %133
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %10, align 8
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %5, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %5, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = call i32 @bzero_early(i8* %140, i32 %141)
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* @PAGE_SIZE, align 4
  %145 = call i32 @init_static_kenv(i8* %143, i32 %144)
  %146 = load i32, i32* @xen_legacy_init_ops, align 4
  store i32 %146, i32* @init_ops, align 4
  %147 = load i32, i32* @xen_apic_ops, align 4
  store i32 %147, i32* @apic_ops, align 4
  %148 = load i32, i32* @legacy_info, align 4
  store i32 %148, i32* @hypervisor_info, align 4
  %149 = load i64, i64* %5, align 8
  %150 = call i64 @hammer_time(i32 0, i64 %149)
  ret i64 %150
}

declare dso_local i32 @xc_printf(i8*, ...) #1

declare dso_local i32 @HYPERVISOR_shutdown(i32) #1

declare dso_local i32 @load_cr3(i64) #1

declare dso_local i32 @bzero_early(i8*, i32) #1

declare dso_local i32 @init_static_kenv(i8*, i32) #1

declare dso_local i64 @hammer_time(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
