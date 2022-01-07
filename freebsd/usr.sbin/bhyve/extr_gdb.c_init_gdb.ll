; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_init_gdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_init_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"==> starting on %d, %swaiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@gdb_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"gdb mutex init\00", align 1
@idle_vcpus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"gdb cv init\00", align 1
@ctx = common dso_local global %struct.vmctx* null, align 8
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"gdb socket create\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"gdb socket bind\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gdb socket listen\00", align 1
@stepping_vcpu = common dso_local global i32 0, align 4
@stopped_vcpu = common dso_local global i32 0, align 4
@vcpus_suspended = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to mark gdb socket non-blocking\00", align 1
@EVF_READ = common dso_local global i32 0, align 4
@new_connection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_gdb(%struct.vmctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %15)
  %17 = call i32 @pthread_mutex_init(i32* @gdb_lock, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @errc(i32 1, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %3
  %24 = call i32 @pthread_cond_init(i32* @idle_vcpus, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @errc(i32 1, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  store %struct.vmctx* %31, %struct.vmctx** @ctx, align 8
  %32 = load i32, i32* @PF_INET, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = call i32 @socket(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 16, i32* %40, align 4
  %41 = load i32, i32* @AF_INET, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %52 = call i64 @bind(i32 %50, %struct.sockaddr* %51, i32 16)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @listen(i32 %57, i32 1)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  store i32 -1, i32* @stepping_vcpu, align 4
  store i32 -1, i32* @stopped_vcpu, align 4
  %66 = call i32 @CPU_SET(i32 0, i32* @vcpus_suspended)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @F_GETFL, align 4
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @F_SETFL, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @O_NONBLOCK, align 4
  %75 = or i32 %73, %74
  %76 = call i32 (i32, i32, ...) @fcntl(i32 %71, i32 %72, i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @limit_gdb_socket(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EVF_READ, align 4
  %85 = load i32, i32* @new_connection, align 4
  %86 = call i32 @mevent_add(i32 %83, i32 %84, i32 %85, i32* null)
  ret void
}

declare dso_local i32 @debug(i8*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @limit_gdb_socket(i32) #1

declare dso_local i32 @mevent_add(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
