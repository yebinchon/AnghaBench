; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_is_closing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_is_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client = type { %struct.TYPE_3__*, %struct.cuse_client_command*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cuse_client_command = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@CUSE_CLI_IS_CLOSING = common dso_local global i32 0, align 4
@CUSE_CMD_MAX = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuse_client*)* @cuse_client_is_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_client_is_closing(%struct.cuse_client* %0) #0 {
  %2 = alloca %struct.cuse_client*, align 8
  %3 = alloca %struct.cuse_client_command*, align 8
  %4 = alloca i64, align 8
  store %struct.cuse_client* %0, %struct.cuse_client** %2, align 8
  %5 = load %struct.cuse_client*, %struct.cuse_client** %2, align 8
  %6 = call i64 @CUSE_CLIENT_CLOSING(%struct.cuse_client* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = load i32, i32* @CUSE_CLI_IS_CLOSING, align 4
  %11 = load %struct.cuse_client*, %struct.cuse_client** %2, align 8
  %12 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.cuse_client*, %struct.cuse_client** %2, align 8
  %16 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %47, %9
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @CUSE_CMD_MAX, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.cuse_client*, %struct.cuse_client** %2, align 8
  %23 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %22, i32 0, i32 1
  %24 = load %struct.cuse_client_command*, %struct.cuse_client_command** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %24, i64 %25
  store %struct.cuse_client_command* %26, %struct.cuse_client_command** %3, align 8
  %27 = load %struct.cuse_client_command*, %struct.cuse_client_command** %3, align 8
  %28 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.cuse_client*, %struct.cuse_client** %2, align 8
  %34 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.cuse_client_command*, %struct.cuse_client_command** %3, align 8
  %38 = load i32, i32* @entry, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.cuse_client_command* %37, i32 %38)
  %40 = load %struct.cuse_client_command*, %struct.cuse_client_command** %3, align 8
  %41 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %32, %21
  %44 = load %struct.cuse_client_command*, %struct.cuse_client_command** %3, align 8
  %45 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %44, i32 0, i32 0
  %46 = call i32 @cv_broadcast(i32* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %17

50:                                               ; preds = %8, %17
  ret void
}

declare dso_local i64 @CUSE_CLIENT_CLOSING(%struct.cuse_client*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cuse_client_command*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
