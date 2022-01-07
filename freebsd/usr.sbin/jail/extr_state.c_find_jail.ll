; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_find_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_find_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32 }

@jails_byname = common dso_local global i32* null, align 8
@njails = common dso_local global i32 0, align 4
@cmp_jailptr_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfjail* (i8*)* @find_jail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfjail* @find_jail(i8* %0) #0 {
  %2 = alloca %struct.cfjail*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cfjail**, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32*, i32** @jails_byname, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.cfjail* null, %struct.cfjail** %2, align 8
  br label %22

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32*, i32** @jails_byname, align 8
  %11 = load i32, i32* @njails, align 4
  %12 = load i32, i32* @cmp_jailptr_name, align 4
  %13 = call %struct.cfjail** @bsearch(i8* %9, i32* %10, i32 %11, i32 8, i32 %12)
  store %struct.cfjail** %13, %struct.cfjail*** %4, align 8
  %14 = load %struct.cfjail**, %struct.cfjail*** %4, align 8
  %15 = icmp ne %struct.cfjail** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.cfjail**, %struct.cfjail*** %4, align 8
  %18 = load %struct.cfjail*, %struct.cfjail** %17, align 8
  br label %20

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.cfjail* [ %18, %16 ], [ null, %19 ]
  store %struct.cfjail* %21, %struct.cfjail** %2, align 8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load %struct.cfjail*, %struct.cfjail** %2, align 8
  ret %struct.cfjail* %23
}

declare dso_local %struct.cfjail** @bsearch(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
