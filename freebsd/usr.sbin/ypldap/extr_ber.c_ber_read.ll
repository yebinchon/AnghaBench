; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ber*, i8*, i64)* @ber_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ber_read(%struct.ber* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ber*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %58, %45, %3
  %15 = load i64, i64* %10, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load %struct.ber*, %struct.ber** %5, align 8
  %19 = getelementptr inbounds %struct.ber, %struct.ber* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ber*, %struct.ber** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @ber_readbuf(%struct.ber* %23, i32* %24, i64 %25)
  store i64 %26, i64* %9, align 8
  br label %34

27:                                               ; preds = %17
  %28 = load %struct.ber*, %struct.ber** %5, align 8
  %29 = getelementptr inbounds %struct.ber, %struct.ber* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @read(i32 %30, i32* %31, i64 %32)
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  br label %14

46:                                               ; preds = %41
  store i64 -1, i64* %4, align 8
  br label %73

47:                                               ; preds = %34
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = ptrtoint i32* %51 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  store i64 %57, i64* %4, align 8
  br label %73

58:                                               ; preds = %47
  %59 = load i64, i64* %9, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 %59
  store i32* %61, i32** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  br label %14

65:                                               ; preds = %14
  %66 = load i32*, i32** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = ptrtoint i32* %66 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %65, %50, %46
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i64 @ber_readbuf(%struct.ber*, i32*, i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
