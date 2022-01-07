; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_hdrsiz_inpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_hdrsiz_inpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.secpolicyindex = type { i32 }
%struct.secpolicy = type { i32 }

@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipsec_hdrsiz_inpcb(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.secpolicyindex, align 4
  %4 = alloca %struct.secpolicy*, align 8
  %5 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %7 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %8 = call %struct.secpolicy* @ipsec_getpcbpolicy(%struct.inpcb* %6, i32 %7)
  store %struct.secpolicy* %8, %struct.secpolicy** %4, align 8
  %9 = load %struct.secpolicy*, %struct.secpolicy** %4, align 8
  %10 = icmp eq %struct.secpolicy* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %13 = call i64 @key_havesp(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %17 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %18 = call i32 @ipsec_setspidx_inpcb(%struct.inpcb* %16, %struct.secpolicyindex* %3, i32 %17)
  %19 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %20 = call %struct.secpolicy* @key_allocsp(%struct.secpolicyindex* %3, i32 %19)
  store %struct.secpolicy* %20, %struct.secpolicy** %4, align 8
  br label %21

21:                                               ; preds = %15, %11, %1
  %22 = load %struct.secpolicy*, %struct.secpolicy** %4, align 8
  %23 = icmp eq %struct.secpolicy* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call %struct.secpolicy* (...) @key_allocsp_default()
  store %struct.secpolicy* %25, %struct.secpolicy** %4, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.secpolicy*, %struct.secpolicy** %4, align 8
  %28 = call i64 @ipsec_hdrsiz_internal(%struct.secpolicy* %27)
  store i64 %28, i64* %5, align 8
  %29 = call i32 @key_freesp(%struct.secpolicy** %4)
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local %struct.secpolicy* @ipsec_getpcbpolicy(%struct.inpcb*, i32) #1

declare dso_local i64 @key_havesp(i32) #1

declare dso_local i32 @ipsec_setspidx_inpcb(%struct.inpcb*, %struct.secpolicyindex*, i32) #1

declare dso_local %struct.secpolicy* @key_allocsp(%struct.secpolicyindex*, i32) #1

declare dso_local %struct.secpolicy* @key_allocsp_default(...) #1

declare dso_local i64 @ipsec_hdrsiz_internal(%struct.secpolicy*) #1

declare dso_local i32 @key_freesp(%struct.secpolicy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
