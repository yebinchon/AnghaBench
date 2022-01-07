; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_remember_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_remember_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_list = type { %struct.host_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@hosts = common dso_local global %struct.host_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remember_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remember_host(i32 %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca %struct.host_list*, align 8
  %4 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = call i64 @malloc(i32 16)
  %6 = inttoptr i64 %5 to %struct.host_list*
  store %struct.host_list* %6, %struct.host_list** %3, align 8
  %7 = icmp eq %struct.host_list* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.host_list*, %struct.host_list** %3, align 8
  %14 = getelementptr inbounds %struct.host_list, %struct.host_list* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.host_list*, %struct.host_list** @hosts, align 8
  %17 = load %struct.host_list*, %struct.host_list** %3, align 8
  %18 = getelementptr inbounds %struct.host_list, %struct.host_list* %17, i32 0, i32 0
  store %struct.host_list* %16, %struct.host_list** %18, align 8
  %19 = load %struct.host_list*, %struct.host_list** %3, align 8
  store %struct.host_list* %19, %struct.host_list** @hosts, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
