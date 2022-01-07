; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_read_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_read_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"rpcbind: cannot stat file = %s for reading\0A\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"rpcbind: invalid permissions on file = %s for reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"rpcbind: cannot open file = %s for reading\0A\00", align 1
@XDR_DECODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"rpcbind: xdr_%s: failed\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"rpcbind: will start from scratch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64 (i32*, i8*)*, i8*)* @read_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_struct(i8* %0, i64 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  store i64 (i32*, i8*)* %1, i64 (i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %67

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @S_IRWXG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_IRWXO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22, %18
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %67

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %67

47:                                               ; preds = %38
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @XDR_DECODE, align 4
  %50 = call i32 @xdrstdio_create(i32* %9, i32* %48, i32 %49)
  %51 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 %51(i32* %9, i8* %52)
  %54 = load i64, i64* @FALSE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @fclose(i32* %60)
  br label %67

62:                                               ; preds = %47
  %63 = call i32 @XDR_DESTROY(i32* %9)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %4, align 8
  br label %71

67:                                               ; preds = %56, %43, %34, %14
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @xdrstdio_create(i32*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
