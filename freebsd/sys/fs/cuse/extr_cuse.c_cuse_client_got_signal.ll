; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_got_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_got_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client_command = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.cuse_server*, %struct.cuse_client_command* }
%struct.cuse_server = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@CUSE_CMD_SIGNAL = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuse_client_command*)* @cuse_client_got_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_client_got_signal(%struct.cuse_client_command* %0) #0 {
  %2 = alloca %struct.cuse_client_command*, align 8
  %3 = alloca %struct.cuse_server*, align 8
  store %struct.cuse_client_command* %0, %struct.cuse_client_command** %2, align 8
  %4 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %5 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %7 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.cuse_client_command*, %struct.cuse_client_command** %9, align 8
  %11 = load i64, i64* @CUSE_CMD_SIGNAL, align 8
  %12 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %10, i64 %11
  store %struct.cuse_client_command* %12, %struct.cuse_client_command** %2, align 8
  %13 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %14 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.cuse_server*, %struct.cuse_server** %16, align 8
  store %struct.cuse_server* %17, %struct.cuse_server** %3, align 8
  %18 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %19 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %25 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_4__* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.cuse_server*, %struct.cuse_server** %3, align 8
  %31 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.cuse_server*, %struct.cuse_server** %3, align 8
  %36 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %35, i32 0, i32 2
  %37 = load %struct.cuse_client_command*, %struct.cuse_client_command** %2, align 8
  %38 = load i32, i32* @entry, align 4
  %39 = call i32 @TAILQ_INSERT_TAIL(i32* %36, %struct.cuse_client_command* %37, i32 %38)
  %40 = load %struct.cuse_server*, %struct.cuse_server** %3, align 8
  %41 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %40, i32 0, i32 1
  %42 = call i32 @cv_signal(i32* %41)
  br label %43

43:                                               ; preds = %34, %29, %23, %1
  ret void
}

declare dso_local i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cuse_client_command*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
