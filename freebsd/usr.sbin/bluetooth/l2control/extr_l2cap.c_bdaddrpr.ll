; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_bdaddrpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_bdaddrpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@bdaddrpr.str = internal global [24 x i8] zeroinitializer, align 16
@NG_HCI_BDADDR_ANY = common dso_local global i32 0, align 4
@numeric_bdaddr = external dso_local global i32, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @bdaddrpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bdaddrpr(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostent*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.hostent* null, %struct.hostent** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @NG_HCI_BDADDR_ANY, align 4
  %7 = call i64 @memcmp(i32* %5, i32 %6, i32 4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0), i8** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @numeric_bdaddr, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* @AF_BLUETOOTH, align 4
  %17 = call %struct.hostent* @bt_gethostbyaddr(i8* %15, i32 4, i32 %16)
  store %struct.hostent* %17, %struct.hostent** %4, align 8
  %18 = icmp ne %struct.hostent* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.hostent*, %struct.hostent** %4, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0), i32 %22, i32 24)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0), i8** %2, align 8
  br label %27

24:                                               ; preds = %13, %10
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @bt_ntoa(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @bdaddrpr.str, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %19, %9
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local %struct.hostent* @bt_gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @bt_ntoa(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
