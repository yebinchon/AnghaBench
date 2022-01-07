; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sysctl_out_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sysctl_out_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sysctl_req = type { i32* }
%struct.sbuf = type { i32 }
%struct.kinfo_proc = type { i32 }

@SBUF_INCLUDENUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.sysctl_req*, i32)* @sysctl_out_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_out_proc(%struct.proc* %0, %struct.sysctl_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sysctl_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbuf, align 4
  %9 = alloca %struct.kinfo_proc, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sysctl_req* %1, %struct.sysctl_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %13 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @kern_proc_out_size(%struct.proc* %18, i32 %19)
  %21 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %17, i32 0, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = bitcast %struct.kinfo_proc* %9 to i8*
  %24 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %25 = call i32 @sbuf_new_for_sysctl(%struct.sbuf* %8, i8* %23, i32 4, %struct.sysctl_req* %24)
  %26 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %27 = call i32 @sbuf_clear_flags(%struct.sbuf* %8, i32 %26)
  %28 = load %struct.proc*, %struct.proc** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @kern_proc_out(%struct.proc* %28, %struct.sbuf* %8, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = call i32 @sbuf_finish(%struct.sbuf* %8)
  store i32 %31, i32* %11, align 4
  %32 = call i32 @sbuf_delete(%struct.sbuf* %8)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %35, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, i32, i32) #1

declare dso_local i32 @kern_proc_out_size(%struct.proc*, i32) #1

declare dso_local i32 @sbuf_new_for_sysctl(%struct.sbuf*, i8*, i32, %struct.sysctl_req*) #1

declare dso_local i32 @sbuf_clear_flags(%struct.sbuf*, i32) #1

declare dso_local i32 @kern_proc_out(%struct.proc*, %struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
