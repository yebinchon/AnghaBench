; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_ht.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostlist = type { i64, %struct.hostlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostlist* ()* @get_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostlist* @get_ht() #0 {
  %1 = alloca %struct.hostlist*, align 8
  %2 = call i64 @malloc(i32 16)
  %3 = inttoptr i64 %2 to %struct.hostlist*
  store %struct.hostlist* %3, %struct.hostlist** %1, align 8
  %4 = load %struct.hostlist*, %struct.hostlist** %1, align 8
  %5 = icmp eq %struct.hostlist* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @out_of_mem()
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.hostlist*, %struct.hostlist** %1, align 8
  %10 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %9, i32 0, i32 1
  store %struct.hostlist* null, %struct.hostlist** %10, align 8
  %11 = load %struct.hostlist*, %struct.hostlist** %1, align 8
  %12 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.hostlist*, %struct.hostlist** %1, align 8
  ret %struct.hostlist* %13
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @out_of_mem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
