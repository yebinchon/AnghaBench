; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_netbufdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_netbufdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netbuf* (%struct.netbuf*)* @netbufdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netbuf* @netbufdup(%struct.netbuf* %0) #0 {
  %2 = alloca %struct.netbuf*, align 8
  %3 = alloca %struct.netbuf*, align 8
  %4 = alloca %struct.netbuf*, align 8
  store %struct.netbuf* %0, %struct.netbuf** %3, align 8
  %5 = call %struct.netbuf* @calloc(i32 1, i32 4)
  store %struct.netbuf* %5, %struct.netbuf** %4, align 8
  %6 = icmp eq %struct.netbuf* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %10 = load %struct.netbuf*, %struct.netbuf** %3, align 8
  %11 = call i64 @netbuf_copybuf(%struct.netbuf* %9, %struct.netbuf* %10)
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %16 = call i32 @free(%struct.netbuf* %15)
  store %struct.netbuf* null, %struct.netbuf** %2, align 8
  br label %19

17:                                               ; preds = %8
  %18 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  store %struct.netbuf* %18, %struct.netbuf** %2, align 8
  br label %19

19:                                               ; preds = %17, %14, %7
  %20 = load %struct.netbuf*, %struct.netbuf** %2, align 8
  ret %struct.netbuf* %20
}

declare dso_local %struct.netbuf* @calloc(i32, i32) #1

declare dso_local i64 @netbuf_copybuf(%struct.netbuf*, %struct.netbuf*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
