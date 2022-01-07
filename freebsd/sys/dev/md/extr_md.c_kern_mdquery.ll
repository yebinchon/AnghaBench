; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_req = type { i32 }

@md_sx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_req*)* @kern_mdquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_mdquery(%struct.md_req* %0) #0 {
  %2 = alloca %struct.md_req*, align 8
  %3 = alloca i32, align 4
  store %struct.md_req* %0, %struct.md_req** %2, align 8
  %4 = call i32 @sx_xlock(i32* @md_sx)
  %5 = load %struct.md_req*, %struct.md_req** %2, align 8
  %6 = call i32 @kern_mdquery_locked(%struct.md_req* %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @sx_xunlock(i32* @md_sx)
  %8 = load i32, i32* %3, align 4
  ret i32 %8
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @kern_mdquery_locked(%struct.md_req*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
