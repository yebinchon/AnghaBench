; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsuserd/extr_nfsuserd.c_xdr_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsuserd/extr_nfsuserd.c_xdr_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i8* }

@MAXNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @xdr_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_getname(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to %struct.info*
  store %struct.info* %9, %struct.info** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @xdr_long(i32* %10, i64* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @MAXNAME, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %34

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.info*, %struct.info** %6, align 8
  %22 = getelementptr inbounds %struct.info, %struct.info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @xdr_opaque(i32* %20, i8* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.info*, %struct.info** %6, align 8
  %30 = getelementptr inbounds %struct.info, %struct.info* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %27, %18, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @xdr_long(i32*, i64*) #1

declare dso_local i32 @xdr_opaque(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
