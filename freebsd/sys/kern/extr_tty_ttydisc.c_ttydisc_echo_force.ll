; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_echo_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_echo_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i64 }

@o = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@__const.ttydisc_echo_force.ob = private unnamed_addr constant [4 x i8] c"^?\08\08", align 1
@VEOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8, i32)* @ttydisc_echo_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_echo_force(%struct.tty* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @o, align 4
  %10 = load i32, i32* @OPOST, align 4
  %11 = call i64 @CMP_FLAG(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8, i8* %6, align 1
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @CTL_ECHO(i8 signext %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.tty*, %struct.tty** %5, align 8
  %20 = load i8, i8* %6, align 1
  %21 = call i32 @ttydisc_write_oproc(%struct.tty* %19, i8 signext %20)
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %13, %3
  %23 = load i32, i32* @l, align 4
  %24 = load i32, i32* @ECHOCTL, align 4
  %25 = call i64 @CMP_FLAG(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %22
  %28 = load i8, i8* %6, align 1
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @CTL_PRINT(i8 signext %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.ttydisc_echo_force.ob, i32 0, i32 0), i64 4, i1 false)
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 127
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8, i8* %6, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, 65
  %41 = sub nsw i32 %40, 1
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @VEOF, align 4
  %49 = load i8, i8* %6, align 1
  %50 = call i64 @CMP_CC(i32 %48, i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.tty*, %struct.tty** %5, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 0
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %56 = call i32 @ttyoutq_write_nofrag(i32* %54, i8* %55, i32 4)
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %47, %44
  %58 = load %struct.tty*, %struct.tty** %5, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 2
  store i64 %61, i64* %59, align 8
  %62 = load %struct.tty*, %struct.tty** %5, align 8
  %63 = getelementptr inbounds %struct.tty, %struct.tty* %62, i32 0, i32 0
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %65 = call i32 @ttyoutq_write_nofrag(i32* %63, i8* %64, i32 2)
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %27, %22
  %67 = load %struct.tty*, %struct.tty** %5, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.tty*, %struct.tty** %5, align 8
  %72 = getelementptr inbounds %struct.tty, %struct.tty* %71, i32 0, i32 0
  %73 = call i32 @ttyoutq_write_nofrag(i32* %72, i8* %6, i32 1)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %57, %52, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @CMP_FLAG(i32, i32) #1

declare dso_local i64 @CTL_ECHO(i8 signext, i32) #1

declare dso_local i32 @ttydisc_write_oproc(%struct.tty*, i8 signext) #1

declare dso_local i64 @CTL_PRINT(i8 signext, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CMP_CC(i32, i8 signext) #1

declare dso_local i32 @ttyoutq_write_nofrag(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
