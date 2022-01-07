; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_diskless.c_hwaddr_to_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_diskless.c_hwaddr_to_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32, i8**, i32, i32, i32 }

@AF_LINK = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%x:%x:%x:%x:%x:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*)* @hwaddr_to_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwaddr_to_sockaddr(i8* %0, %struct.sockaddr_dl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [6 x i8*], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  %9 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %10 = call i32 @bzero(%struct.sockaddr_dl* %9, i32 32)
  %11 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 0
  store i32 32, i32* %12, align 8
  %13 = load i32, i32* @AF_LINK, align 4
  %14 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @IFT_ETHER, align 4
  %17 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %20 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @kern_getenv(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  %34 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %28, i8** %29, i8** %30, i8** %31, i8** %32, i8** %33)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @freeenv(i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 6
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %77

40:                                               ; preds = %26
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %42 = load i8*, i8** %41, align 16
  %43 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %42, i8** %46, align 8
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %50 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %48, i8** %52, align 8
  %53 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  %54 = load i8*, i8** %53, align 16
  %55 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %56 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  store i8* %54, i8** %58, align 8
  %59 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %62 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  store i8* %60, i8** %64, align 8
  %65 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  %66 = load i8*, i8** %65, align 16
  %67 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %68 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  store i8* %66, i8** %70, align 8
  %71 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %74 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 5
  store i8* %72, i8** %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %40, %39, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @bzero(%struct.sockaddr_dl*, i32) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
