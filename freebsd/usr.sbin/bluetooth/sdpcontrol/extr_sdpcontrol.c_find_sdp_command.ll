; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_sdpcontrol.c_find_sdp_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_sdpcontrol.c_find_sdp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_command = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdp_command* (i8*, %struct.sdp_command*)* @find_sdp_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdp_command* @find_sdp_command(i8* %0, %struct.sdp_command* %1) #0 {
  %3 = alloca %struct.sdp_command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdp_command*, align 8
  %6 = alloca %struct.sdp_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sdp_command* %1, %struct.sdp_command** %5, align 8
  store %struct.sdp_command* null, %struct.sdp_command** %6, align 8
  %9 = load %struct.sdp_command*, %struct.sdp_command** %5, align 8
  store %struct.sdp_command* %9, %struct.sdp_command** %6, align 8
  br label %10

10:                                               ; preds = %52, %2
  %11 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %12 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %17 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 32)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %25 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %33 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @strncasecmp(i8* %31, i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  store %struct.sdp_command* %39, %struct.sdp_command** %3, align 8
  br label %56

40:                                               ; preds = %22
  br label %51

41:                                               ; preds = %15
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %44 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %42, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  store %struct.sdp_command* %49, %struct.sdp_command** %3, align 8
  br label %56

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.sdp_command*, %struct.sdp_command** %6, align 8
  %54 = getelementptr inbounds %struct.sdp_command, %struct.sdp_command* %53, i32 1
  store %struct.sdp_command* %54, %struct.sdp_command** %6, align 8
  br label %10

55:                                               ; preds = %10
  store %struct.sdp_command* null, %struct.sdp_command** %3, align 8
  br label %56

56:                                               ; preds = %55, %48, %38
  %57 = load %struct.sdp_command*, %struct.sdp_command** %3, align 8
  ret %struct.sdp_command* %57
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
