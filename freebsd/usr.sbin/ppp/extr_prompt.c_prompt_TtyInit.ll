; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_TtyInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32, %struct.termios, %struct.termios }
%struct.termios = type { i32, i32*, i32, i32, i64 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@CS8 = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_TtyInit(%struct.prompt* %0) #0 {
  %2 = alloca %struct.prompt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.termios, align 8
  store %struct.prompt* %0, %struct.prompt** %2, align 8
  %6 = load %struct.prompt*, %struct.prompt** %2, align 8
  %7 = icmp ne %struct.prompt* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.prompt*, %struct.prompt** %2, align 8
  %10 = getelementptr inbounds %struct.prompt, %struct.prompt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @STDIN_FILENO, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ]
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @F_GETFL, align 4
  %18 = call i32 @fcntl(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @F_SETFL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @fcntl(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %14
  %30 = load %struct.prompt*, %struct.prompt** %2, align 8
  %31 = icmp ne %struct.prompt* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.prompt*, %struct.prompt** %2, align 8
  %34 = getelementptr inbounds %struct.prompt, %struct.prompt* %33, i32 0, i32 2
  %35 = bitcast %struct.termios* %5 to i8*
  %36 = bitcast %struct.termios* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 32, i1 false)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @tcgetattr(i32 %38, %struct.termios* %5)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @ECHO, align 4
  %42 = load i32, i32* @ISIG, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ICANON, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @OPOST, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load %struct.prompt*, %struct.prompt** %2, align 8
  %57 = icmp ne %struct.prompt* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %40
  %59 = load i32, i32* @_POSIX_VDISABLE, align 4
  %60 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @VINTR, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %40
  %65 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @VMIN, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @VTIME, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @CS8, align 4
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @TCSANOW, align 4
  %79 = call i32 @tcsetattr(i32 %77, i32 %78, %struct.termios* %5)
  %80 = load %struct.prompt*, %struct.prompt** %2, align 8
  %81 = icmp ne %struct.prompt* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load %struct.prompt*, %struct.prompt** %2, align 8
  %84 = getelementptr inbounds %struct.prompt, %struct.prompt* %83, i32 0, i32 1
  %85 = bitcast %struct.termios* %84 to i8*
  %86 = bitcast %struct.termios* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 32, i1 false)
  br label %87

87:                                               ; preds = %82, %64
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
