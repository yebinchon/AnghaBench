; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_NewState.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_NewState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, i32 }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: %s -> %s\0A\00", align 1
@states = common dso_local global i32* null, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Can't enter state %d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.datalink*, i32)* @datalink_NewState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_NewState(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.datalink*, %struct.datalink** %3, align 8
  %7 = getelementptr inbounds %struct.datalink, %struct.datalink* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* @LogPHASE, align 4
  %16 = load %struct.datalink*, %struct.datalink** %3, align 8
  %17 = getelementptr inbounds %struct.datalink, %struct.datalink* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.datalink*, %struct.datalink** %3, align 8
  %20 = call i32 @datalink_State(%struct.datalink* %19)
  %21 = load i32*, i32** @states, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, i32, ...) @log_Printf(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.datalink*, %struct.datalink** %3, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %10
  %31 = load i32, i32* @LogERROR, align 4
  %32 = load %struct.datalink*, %struct.datalink** %3, align 8
  %33 = getelementptr inbounds %struct.datalink, %struct.datalink* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, i32, i32, ...) @log_Printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %14
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @datalink_State(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
