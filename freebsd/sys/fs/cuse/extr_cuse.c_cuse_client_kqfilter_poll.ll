; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_kqfilter_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_kqfilter_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.cuse_client = type { i32, i32 }

@CUSE_CLI_KNOTE_HAS_READ = common dso_local global i32 0, align 4
@CUSE_CLI_KNOTE_HAS_WRITE = common dso_local global i32 0, align 4
@CUSE_CLI_KNOTE_NEED_READ = common dso_local global i32 0, align 4
@CUSE_CLI_KNOTE_NEED_WRITE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*, %struct.cuse_client*)* @cuse_client_kqfilter_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_client_kqfilter_poll(%struct.cdev* %0, %struct.cuse_client* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.cuse_client*, align 8
  %5 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.cuse_client* %1, %struct.cuse_client** %4, align 8
  %6 = call i32 (...) @cuse_lock()
  %7 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %8 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CUSE_CLI_KNOTE_HAS_READ, align 4
  %11 = load i32, i32* @CUSE_CLI_KNOTE_HAS_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @CUSE_CLI_KNOTE_NEED_READ, align 4
  %15 = load i32, i32* @CUSE_CLI_KNOTE_NEED_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %19 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i32 (...) @cuse_unlock()
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %2
  %26 = load %struct.cdev*, %struct.cdev** %3, align 8
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load i32, i32* @POLLOUT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @cuse_client_poll(%struct.cdev* %26, i32 %29, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @POLLIN, align 4
  %33 = load i32, i32* @POLLOUT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %25
  %38 = call i32 (...) @cuse_lock()
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @POLLIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @CUSE_CLI_KNOTE_NEED_READ, align 4
  %45 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %46 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @POLLOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @CUSE_CLI_KNOTE_NEED_WRITE, align 4
  %56 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %57 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %62 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cuse_server_wakeup_locked(i32 %63)
  %65 = call i32 (...) @cuse_unlock()
  br label %66

66:                                               ; preds = %60, %25
  br label %67

67:                                               ; preds = %66, %2
  ret void
}

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_client_poll(%struct.cdev*, i32, i32*) #1

declare dso_local i32 @cuse_server_wakeup_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
