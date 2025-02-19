; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemNumUsers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemNumUsers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64 }

@USER_PROCESS = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @OS_getSystemNumUsers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OS_getSystemNumUsers(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.utmpx*, align 8
  store i64* %0, i64** %2, align 8
  %4 = call i32 (...) @setutxent()
  %5 = load i64*, i64** %2, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %7, %struct.utmpx** %3, align 8
  %8 = icmp ne %struct.utmpx* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %11 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USER_PROCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64*, i64** %2, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  br label %6

20:                                               ; preds = %6
  %21 = call i32 (...) @endutxent()
  %22 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  ret i32 %22
}

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
