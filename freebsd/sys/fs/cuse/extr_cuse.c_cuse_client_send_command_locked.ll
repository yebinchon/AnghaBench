; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_send_command_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_send_command_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client_command = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.cuse_server* }
%struct.cuse_server = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@FREAD = common dso_local global i32 0, align 4
@CUSE_FFLAG_READ = common dso_local global i64 0, align 8
@FWRITE = common dso_local global i32 0, align 4
@CUSE_FFLAG_WRITE = common dso_local global i64 0, align 8
@IO_NDELAY = common dso_local global i32 0, align 4
@CUSE_FFLAG_NONBLOCK = common dso_local global i64 0, align 8
@SV_ILP32 = common dso_local global i32 0, align 4
@CUSE_FFLAG_COMPAT32 = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuse_client_command*, i64, i64, i32, i32)* @cuse_client_send_command_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_client_send_command_locked(%struct.cuse_client_command* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cuse_client_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.cuse_server*, align 8
  store %struct.cuse_client_command* %0, %struct.cuse_client_command** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @FREAD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* @CUSE_FFLAG_READ, align 8
  %19 = load i64, i64* %11, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FWRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @CUSE_FFLAG_WRITE, align 8
  %28 = load i64, i64* %11, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @IO_NDELAY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @CUSE_FFLAG_NONBLOCK, align 8
  %37 = load i64, i64* %11, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @SV_ILP32, align 4
  %41 = call i64 @SV_CURPROC_FLAG(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* @CUSE_FFLAG_COMPAT32, align 8
  %45 = load i64, i64* %11, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %50 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %54 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %58 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %61 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.cuse_server*, %struct.cuse_server** %63, align 8
  store %struct.cuse_server* %64, %struct.cuse_server** %12, align 8
  %65 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %66 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %47
  %71 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %72 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_6__* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %78 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %83 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %82, i32 0, i32 2
  %84 = load %struct.cuse_client_command*, %struct.cuse_client_command** %6, align 8
  %85 = load i32, i32* @entry, align 4
  %86 = call i32 @TAILQ_INSERT_TAIL(i32* %83, %struct.cuse_client_command* %84, i32 %85)
  %87 = load %struct.cuse_server*, %struct.cuse_server** %12, align 8
  %88 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %87, i32 0, i32 1
  %89 = call i32 @cv_signal(i32* %88)
  br label %90

90:                                               ; preds = %81, %76, %70, %47
  ret void
}

declare dso_local i64 @SV_CURPROC_FLAG(i32) #1

declare dso_local i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_6__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cuse_client_command*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
