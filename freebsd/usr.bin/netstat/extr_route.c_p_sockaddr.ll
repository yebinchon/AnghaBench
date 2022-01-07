; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{:%s/%%s} \00", align 1
@Wflag = common dso_local global i64 0, align 8
@numeric_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"{[:%d}{:%s/%%s}{]:} \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"{[:%d}{:%s/%%-.*s}{]:} \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*, %struct.sockaddr*, i32, i32)* @p_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_sockaddr(i8* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i8* @fmt_sockaddr(%struct.sockaddr* %14, %struct.sockaddr* %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 (i8*, ...) @xo_emit(i8* %24, i8* %25)
  store i32 0, i32* %13, align 4
  br label %61

27:                                               ; preds = %5
  %28 = load i64, i64* @Wflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @numeric_addr, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %37)
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (i8*, ...) @xo_emit(i8* %39, i8* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %48, %33
  br label %60

50:                                               ; preds = %30
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 0, %52
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %54)
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i8*, ...) @xo_emit(i8* %56, i32 %57, i8* %58)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %50, %49
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32, i32* %13, align 4
  ret i32 %62
}

declare dso_local i8* @fmt_sockaddr(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
