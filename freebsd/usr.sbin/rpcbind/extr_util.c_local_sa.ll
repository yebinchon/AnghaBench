; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_util.c_local_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_util.c_local_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@local_in4 = common dso_local global i64 0, align 8
@local_in6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr* @local_sa(i32 %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 129, label %5
  ]

5:                                                ; preds = %1
  %6 = load i64, i64* @local_in4, align 8
  %7 = inttoptr i64 %6 to %struct.sockaddr*
  store %struct.sockaddr* %7, %struct.sockaddr** %2, align 8
  br label %9

8:                                                ; preds = %1
  store %struct.sockaddr* null, %struct.sockaddr** %2, align 8
  br label %9

9:                                                ; preds = %8, %5
  %10 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  ret %struct.sockaddr* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
