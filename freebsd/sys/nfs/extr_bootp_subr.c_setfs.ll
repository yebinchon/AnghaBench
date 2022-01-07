; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_setfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_setfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, i8*, i8*, %struct.in_addr*)* @setfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setfs(%struct.sockaddr_in* %0, i8* %1, i8* %2, %struct.in_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.in_addr*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.in_addr* %3, %struct.in_addr** %9, align 8
  %10 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %12 = call i64 @getip(i8** %8, i32* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %16 = icmp ne %struct.in_addr* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 2
  %26 = call i32 @bcopy(%struct.in_addr* %23, i32* %25, i32 4)
  br label %28

27:                                               ; preds = %17, %14
  store i32 0, i32* %5, align 4
  br label %48

28:                                               ; preds = %22
  br label %38

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 58
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i32 12, i32* %40, align 4
  %41 = load i32, i32* @AF_INET, align 4
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @MNAMELEN, align 4
  %47 = call i32 @strlcpy(i8* %44, i8* %45, i32 %46)
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %34, %27
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @getip(i8**, i32*) #1

declare dso_local i32 @bcopy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
