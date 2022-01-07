; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktls_session = type { %struct.ocf_session* }
%struct.ocf_session = type { i32 }

@M_KTLS_OCF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktls_session*)* @ktls_ocf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktls_ocf_free(%struct.ktls_session* %0) #0 {
  %2 = alloca %struct.ktls_session*, align 8
  %3 = alloca %struct.ocf_session*, align 8
  store %struct.ktls_session* %0, %struct.ktls_session** %2, align 8
  %4 = load %struct.ktls_session*, %struct.ktls_session** %2, align 8
  %5 = getelementptr inbounds %struct.ktls_session, %struct.ktls_session* %4, i32 0, i32 0
  %6 = load %struct.ocf_session*, %struct.ocf_session** %5, align 8
  store %struct.ocf_session* %6, %struct.ocf_session** %3, align 8
  %7 = load %struct.ocf_session*, %struct.ocf_session** %3, align 8
  %8 = getelementptr inbounds %struct.ocf_session, %struct.ocf_session* %7, i32 0, i32 0
  %9 = call i32 @mtx_destroy(i32* %8)
  %10 = load %struct.ocf_session*, %struct.ocf_session** %3, align 8
  %11 = call i32 @explicit_bzero(%struct.ocf_session* %10, i32 4)
  %12 = load %struct.ocf_session*, %struct.ocf_session** %3, align 8
  %13 = load i32, i32* @M_KTLS_OCF, align 4
  %14 = call i32 @free(%struct.ocf_session* %12, i32 %13)
  ret void
}

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @explicit_bzero(%struct.ocf_session*, i32) #1

declare dso_local i32 @free(%struct.ocf_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
