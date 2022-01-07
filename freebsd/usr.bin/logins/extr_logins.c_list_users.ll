; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_list_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logins/extr_logins.c_list_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpasswd = type { i64 }

@pwds = common dso_local global %struct.xpasswd* null, align 8
@npwds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_users() #0 {
  %1 = alloca %struct.xpasswd*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load %struct.xpasswd*, %struct.xpasswd** @pwds, align 8
  store %struct.xpasswd* %3, %struct.xpasswd** %1, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @npwds, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.xpasswd*, %struct.xpasswd** %1, align 8
  %10 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.xpasswd*, %struct.xpasswd** %1, align 8
  %15 = call i32 @display_user(%struct.xpasswd* %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %2, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %2, align 4
  %20 = load %struct.xpasswd*, %struct.xpasswd** %1, align 8
  %21 = getelementptr inbounds %struct.xpasswd, %struct.xpasswd* %20, i32 1
  store %struct.xpasswd* %21, %struct.xpasswd** %1, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @display_user(%struct.xpasswd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
