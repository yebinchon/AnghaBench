; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i32, %struct.sockaddr_nb* }
%struct.sockaddr_nb = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NBF_LOCADDR = common dso_local global i32 0, align 4
@NB_MINSALEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.sockaddr*, %struct.thread*)* @smb_nbst_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_bind(%struct.smb_vc* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.nbpcb*, align 8
  %8 = alloca %struct.sockaddr_nb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %11 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %12 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %11, i32 0, i32 0
  %13 = load %struct.nbpcb*, %struct.nbpcb** %12, align 8
  store %struct.nbpcb* %13, %struct.nbpcb** %7, align 8
  %14 = call i32 @NBDEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %3
  %17 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %18 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NBF_LOCADDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = icmp eq %struct.sockaddr* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %54

28:                                               ; preds = %24
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NB_MINSALEN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %54

36:                                               ; preds = %28
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i64 @sodupsockaddr(%struct.sockaddr* %37, i32 %38)
  %40 = inttoptr i64 %39 to %struct.sockaddr_nb*
  store %struct.sockaddr_nb* %40, %struct.sockaddr_nb** %8, align 8
  %41 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %42 = icmp eq %struct.sockaddr_nb* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %9, align 4
  br label %54

45:                                               ; preds = %36
  %46 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %47 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %48 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %47, i32 0, i32 1
  store %struct.sockaddr_nb* %46, %struct.sockaddr_nb** %48, align 8
  %49 = load i32, i32* @NBF_LOCADDR, align 4
  %50 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %51 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %45, %43, %35, %27, %23
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @NBDEBUG(i8*) #1

declare dso_local i64 @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
