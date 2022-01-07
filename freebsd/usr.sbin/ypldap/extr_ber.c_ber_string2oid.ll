; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_string2oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_string2oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_oid = type { i64, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"._-\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@BER_MAX_OID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ber_string2oid(i8* %0, %struct.ber_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ber_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ber_oid* %1, %struct.ber_oid** %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = trunc i64 %13 to i32
  %18 = call i32 @strlcpy(i8* %15, i8* %16, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, %13
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %24 = call i32 @bzero(%struct.ber_oid* %23, i32 16)
  store i8* %15, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  br label %25

25:                                               ; preds = %57, %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strpbrk(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  store i8 0, i8* %33, align 1
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @UINT_MAX, align 4
  %38 = call i32 @strtonum(i8* %36, i32 0, i32 %37, i8** %10)
  %39 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %40 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %43 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %46, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load %struct.ber_oid*, %struct.ber_oid** %5, align 8
  %51 = getelementptr inbounds %struct.ber_oid, %struct.ber_oid* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BER_MAX_OID_LEN, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %35
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %6, align 8
  br label %25

59:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %55, %21
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @bzero(%struct.ber_oid*, i32) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
