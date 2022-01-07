; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_chargen_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_chargen_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32 }

@LINESIZ = common dso_local global i32 0, align 4
@endring = common dso_local global i8* null, align 8
@ring = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.servtab*)* @chargen_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chargen_stream(i32 %0, %struct.servtab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.servtab* %1, %struct.servtab** %4, align 8
  %9 = load i32, i32* @LINESIZ, align 4
  %10 = add nsw i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.servtab*, %struct.servtab** %4, align 8
  %15 = getelementptr inbounds %struct.servtab, %struct.servtab* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @inetd_setproctitle(i32 %16, i32 %17)
  %19 = load i8*, i8** @endring, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @initring()
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* @LINESIZ, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %13, i64 %25
  store i8 13, i8* %26, align 1
  %27 = load i32, i32* @LINESIZ, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %13, i64 %29
  store i8 10, i8* %30, align 1
  %31 = load i8*, i8** @ring, align 8
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %71, %23
  %33 = load i8*, i8** @endring, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @LINESIZ, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @LINESIZ, align 4
  %44 = call i32 @memmove(i8* %13, i8* %42, i32 %43)
  br label %57

45:                                               ; preds = %32
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @memmove(i8* %13, i8* %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %13, i64 %50
  %52 = load i8*, i8** @ring, align 8
  %53 = load i32, i32* @LINESIZ, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @memmove(i8* %51, i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %45, %41
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** @endring, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** @ring, align 8
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %3, align 4
  %66 = trunc i64 %11 to i32
  %67 = call i32 @write(i32 %65, i8* %13, i32 %66)
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, %11
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %72

71:                                               ; preds = %64
  br label %32

72:                                               ; preds = %70
  %73 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inetd_setproctitle(i32, i32) #2

declare dso_local i32 @initring(...) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
