; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_write_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_write_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot open file = %s for writing\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot save any registration\00", align 1
@FALSE = common dso_local global i64 0, align 8
@XDR_ENCODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"rpcbind: xdr_%s: failed\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64 (i32*, i8*)*, i8*)* @write_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_struct(i8* %0, i64 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 (i32*, i8*)* %1, i64 (i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 @umask(i32 63)
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %18

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i32, i8*, ...) @syslog(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = call i32 (i32, i8*, ...) @syslog(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %4, align 8
  br label %63

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @umask(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @XDR_ENCODE, align 4
  %45 = call i32 @xdrstdio_create(i32* %9, i32* %43, i32 %44)
  %46 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 %46(i32* %9, i8* %47)
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i32, i8*, ...) @syslog(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %4, align 8
  br label %63

58:                                               ; preds = %40
  %59 = call i32 @XDR_DESTROY(i32* %9)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @fclose(i32* %60)
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %58, %51, %32
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @xdrstdio_create(i32*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
