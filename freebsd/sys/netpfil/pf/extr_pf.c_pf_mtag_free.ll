; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_mtag_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_mtag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }

@pf_mtag_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m_tag*)* @pf_mtag_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_mtag_free(%struct.m_tag* %0) #0 {
  %2 = alloca %struct.m_tag*, align 8
  store %struct.m_tag* %0, %struct.m_tag** %2, align 8
  %3 = load i32, i32* @pf_mtag_z, align 4
  %4 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %5 = call i32 @uma_zfree(i32 %3, %struct.m_tag* %4)
  ret void
}

declare dso_local i32 @uma_zfree(i32, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
