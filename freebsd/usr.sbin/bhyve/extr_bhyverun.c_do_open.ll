; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_do_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"vm_create\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"virtual machine cannot be booted\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vm_open\00", align 1
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_MMAP_RW = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vm_reinit\00", align 1
@sockets = common dso_local global i32 0, align 4
@cores = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@maxcpus = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"vm_set_topology\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmctx* (i8*)* @do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmctx* @do_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %10 = call i64 (...) @lpc_bootrom()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @vm_create(i8* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EEXIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  br label %31

28:                                               ; preds = %18
  %29 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @exit(i32 4) #3
  unreachable

31:                                               ; preds = %27
  br label %40

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @exit(i32 4) #3
  unreachable

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i8*, i8** %2, align 8
  %42 = call %struct.vmctx* @vm_open(i8* %41)
  store %struct.vmctx* %42, %struct.vmctx** %3, align 8
  %43 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %44 = icmp eq %struct.vmctx* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @exit(i32 4) #3
  unreachable

48:                                               ; preds = %40
  %49 = load i32, i32* @CAP_IOCTL, align 4
  %50 = load i32, i32* @CAP_MMAP_RW, align 4
  %51 = call i32 @cap_rights_init(i32* %7, i32 %49, i32 %50)
  %52 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %53 = call i32 @vm_get_device_fd(%struct.vmctx* %52)
  %54 = call i32 @caph_rights_limit(i32 %53, i32* %7)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EX_OSERR, align 4
  %58 = call i32 @errx(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %48
  %60 = call i32* @vm_get_ioctls(i64* %9)
  %61 = call i32* @vm_get_ioctls(i64* null)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EX_OSERR, align 4
  %66 = call i32 @errx(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %69 = call i32 @vm_get_device_fd(%struct.vmctx* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @caph_ioctls_limit(i32 %69, i32* %70, i64 %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EX_OSERR, align 4
  %76 = call i32 @errx(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @free(i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %84 = call i32 @vm_reinit(%struct.vmctx* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @exit(i32 4) #3
  unreachable

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %93 = load i32, i32* @sockets, align 4
  %94 = load i32, i32* @cores, align 4
  %95 = load i32, i32* @threads, align 4
  %96 = load i32, i32* @maxcpus, align 4
  %97 = call i32 @vm_set_topology(%struct.vmctx* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @EX_OSERR, align 4
  %102 = call i32 @errx(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  ret %struct.vmctx* %104
}

declare dso_local i64 @lpc_bootrom(...) #1

declare dso_local i32 @vm_create(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.vmctx* @vm_open(i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @vm_get_device_fd(%struct.vmctx*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @vm_get_ioctls(i64*) #1

declare dso_local i32 @caph_ioctls_limit(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @vm_reinit(%struct.vmctx*) #1

declare dso_local i32 @vm_set_topology(%struct.vmctx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
