; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_init_termios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_init_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.termios, %struct.termios }
%struct.termios = type { i32, i8*, i8*, i32, i32, i32, i32 }

@TTYDEF_CFLAG = common dso_local global i32 0, align 4
@TTYDEF_IFLAG = common dso_local global i32 0, align 4
@TTYDEF_LFLAG = common dso_local global i32 0, align 4
@TTYDEF_OFLAG = common dso_local global i32 0, align 4
@TTYDEF_SPEED = common dso_local global i8* null, align 8
@ttydefchars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @tty_init_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_init_termios(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.termios*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 1
  store %struct.termios* %5, %struct.termios** %3, align 8
  %6 = load i32, i32* @TTYDEF_CFLAG, align 4
  %7 = load %struct.termios*, %struct.termios** %3, align 8
  %8 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @TTYDEF_IFLAG, align 4
  %10 = load %struct.termios*, %struct.termios** %3, align 8
  %11 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @TTYDEF_LFLAG, align 4
  %13 = load %struct.termios*, %struct.termios** %3, align 8
  %14 = getelementptr inbounds %struct.termios, %struct.termios* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @TTYDEF_OFLAG, align 4
  %16 = load %struct.termios*, %struct.termios** %3, align 8
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @TTYDEF_SPEED, align 8
  %19 = load %struct.termios*, %struct.termios** %3, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @TTYDEF_SPEED, align 8
  %22 = load %struct.termios*, %struct.termios** %3, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.termios*, %struct.termios** %3, align 8
  %25 = getelementptr inbounds %struct.termios, %struct.termios* %24, i32 0, i32 0
  %26 = load i32, i32* @ttydefchars, align 4
  %27 = call i32 @memcpy(i32* %25, i32 %26, i32 4)
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 0
  %30 = load %struct.termios*, %struct.termios** %3, align 8
  %31 = bitcast %struct.termios* %29 to i8*
  %32 = bitcast %struct.termios* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 40, i1 false)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
