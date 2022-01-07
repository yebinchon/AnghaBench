; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwpm_util.c_iwpm_print_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_iwpm_util.c_iwpm_print_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s IPV4 %pI4: %u(0x%04X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s IPV6 %pI6: %u(0x%04X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwpm_print_sockaddr(%struct.sockaddr_storage* %0, i8* %1) #0 {
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %40 [
    i32 129, label %10
    i32 128, label %25
  ]

10:                                               ; preds = %2
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %12 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %13, i32* %15, i32 %19, i32 %23)
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %27, %struct.sockaddr_in6** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32* %30, i32 %34, i32 %38)
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %25, %10
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
