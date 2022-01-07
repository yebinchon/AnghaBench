; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_readit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_readit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcisel = type { i32 }

@_PATH_DEVPCI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @readit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readit(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcisel, align 4
  %14 = alloca %struct.pcisel, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @_PATH_DEVPCI, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @_PATH_DEVPCI, align 4
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strtol(i8* %24, i8** %10, i32 0)
  store i64 %25, i64* %7, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 58
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @strtol(i8* %36, i8** null, i32 0)
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @getsel(i8* %39)
  %41 = getelementptr inbounds %struct.pcisel, %struct.pcisel* %14, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.pcisel* %13 to i8*
  %43 = bitcast %struct.pcisel* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  store i32 1, i32* %11, align 4
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %72, %38
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @readone(i32 %50, %struct.pcisel* %13, i64 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = srem i32 %57, 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 @putchar(i8 signext 32)
  br label %62

62:                                               ; preds = %60, %56, %49
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 16, %64
  %66 = srem i32 %63, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 32, i32 10
  %70 = trunc i32 %69 to i8
  %71 = call i32 @putchar(i8 signext %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %45

79:                                               ; preds = %45
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 16, %81
  %83 = srem i32 %80, %82
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @putchar(i8 signext 10)
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @close(i32 %88)
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @getsel(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @readone(i32, %struct.pcisel*, i64, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
