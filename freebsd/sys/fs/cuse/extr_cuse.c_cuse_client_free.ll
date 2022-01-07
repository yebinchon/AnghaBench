; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client = type { %struct.cuse_server*, %struct.cuse_client_command* }
%struct.cuse_server = type { i32 }
%struct.cuse_client_command = type { i32, i32 }

@entry = common dso_local global i32 0, align 4
@CUSE_CMD_MAX = common dso_local global i32 0, align 4
@M_CUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cuse_client_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_client_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cuse_client*, align 8
  %4 = alloca %struct.cuse_client_command*, align 8
  %5 = alloca %struct.cuse_server*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cuse_client*
  store %struct.cuse_client* %8, %struct.cuse_client** %3, align 8
  %9 = call i32 (...) @cuse_lock()
  %10 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %11 = call i32 @cuse_client_is_closing(%struct.cuse_client* %10)
  %12 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %13 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %12, i32 0, i32 0
  %14 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %15 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %14, i32 0, i32 0
  %16 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %17 = load i32, i32* @entry, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.cuse_client* %16, i32 %17)
  %19 = call i32 (...) @cuse_unlock()
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %37, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CUSE_CMD_MAX, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %26 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %25, i32 0, i32 1
  %27 = load %struct.cuse_client_command*, %struct.cuse_client_command** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %27, i64 %29
  store %struct.cuse_client_command* %30, %struct.cuse_client_command** %4, align 8
  %31 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %32 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %31, i32 0, i32 1
  %33 = call i32 @sx_destroy(i32* %32)
  %34 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %35 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %34, i32 0, i32 0
  %36 = call i32 @cv_destroy(i32* %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %42 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %41, i32 0, i32 0
  %43 = load %struct.cuse_server*, %struct.cuse_server** %42, align 8
  store %struct.cuse_server* %43, %struct.cuse_server** %5, align 8
  %44 = load %struct.cuse_client*, %struct.cuse_client** %3, align 8
  %45 = load i32, i32* @M_CUSE, align 4
  %46 = call i32 @free(%struct.cuse_client* %44, i32 %45)
  %47 = load %struct.cuse_server*, %struct.cuse_server** %5, align 8
  %48 = call i32 @cuse_server_unref(%struct.cuse_server* %47)
  ret void
}

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_client_is_closing(%struct.cuse_client*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cuse_client*, i32) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(%struct.cuse_client*, i32) #1

declare dso_local i32 @cuse_server_unref(%struct.cuse_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
