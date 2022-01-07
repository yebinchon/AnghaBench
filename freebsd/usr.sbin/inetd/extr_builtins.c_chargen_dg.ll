; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_chargen_dg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_chargen_dg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@chargen_dg.rs = internal global i8* null, align 8
@LINESIZ = common dso_local global i32 0, align 4
@endring = common dso_local global i8* null, align 8
@ring = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.servtab*)* @chargen_dg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chargen_dg(i32 %0, %struct.servtab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.servtab* %1, %struct.servtab** %4, align 8
  %11 = load i32, i32* @LINESIZ, align 4
  %12 = add nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** @endring, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @initring()
  %20 = load i8*, i8** @ring, align 8
  store i8* %20, i8** @chargen_dg.rs, align 8
  br label %21

21:                                               ; preds = %18, %2
  store i32 4, i32* %7, align 4
  %22 = load i32, i32* %3, align 4
  %23 = trunc i64 %13 to i32
  %24 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %25 = call i64 @recvfrom(i32 %22, i8* %15, i32 %23, i32 0, %struct.sockaddr* %24, i32* %7)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %79

28:                                               ; preds = %21
  %29 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %30 = load %struct.servtab*, %struct.servtab** %4, align 8
  %31 = call i64 @check_loop(%struct.sockaddr* %29, %struct.servtab* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %79

34:                                               ; preds = %28
  %35 = load i8*, i8** @endring, align 8
  %36 = load i8*, i8** @chargen_dg.rs, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @LINESIZ, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i8*, i8** @chargen_dg.rs, align 8
  %45 = load i32, i32* @LINESIZ, align 4
  %46 = call i32 @memmove(i8* %15, i8* %44, i32 %45)
  br label %59

47:                                               ; preds = %34
  %48 = load i8*, i8** @chargen_dg.rs, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memmove(i8* %15, i8* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %15, i64 %52
  %54 = load i8*, i8** @ring, align 8
  %55 = load i32, i32* @LINESIZ, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @memmove(i8* %53, i8* %54, i32 %57)
  br label %59

59:                                               ; preds = %47, %43
  %60 = load i8*, i8** @chargen_dg.rs, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** @chargen_dg.rs, align 8
  %62 = load i8*, i8** @endring, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** @ring, align 8
  store i8* %65, i8** @chargen_dg.rs, align 8
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* @LINESIZ, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %15, i64 %68
  store i8 13, i8* %69, align 1
  %70 = load i32, i32* @LINESIZ, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %15, i64 %72
  store i8 10, i8* %73, align 1
  %74 = load i32, i32* %3, align 4
  %75 = trunc i64 %13 to i32
  %76 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @sendto(i32 %74, i8* %15, i32 %75, i32 0, %struct.sockaddr* %76, i32 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %66, %33, %27
  %80 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %83 [
    i32 0, label %82
    i32 1, label %82
  ]

82:                                               ; preds = %79, %79
  ret void

83:                                               ; preds = %79
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @initring(...) #2

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @check_loop(%struct.sockaddr*, %struct.servtab*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
