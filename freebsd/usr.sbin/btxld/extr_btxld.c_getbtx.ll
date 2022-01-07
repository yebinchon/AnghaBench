; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_getbtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/btxld/extr_btxld.c_getbtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btx_hdr = type { i64*, i32, i8*, i8* }

@BTX_MAG0 = common dso_local global i64 0, align 8
@BTX_MAG1 = common dso_local global i64 0, align 8
@BTX_MAG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s: Not a BTX kernel\00", align 1
@fname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.btx_hdr*)* @getbtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getbtx(i32 %0, %struct.btx_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btx_hdr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.btx_hdr* %1, %struct.btx_hdr** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %7 = call i32 @readx(i32 %5, %struct.btx_hdr* %6, i32 32, i32 0)
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 32
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BTX_MAG0, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %10
  %19 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTX_MAG1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTX_MAG2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %18, %10, %2
  %35 = load i32, i32* @fname, align 4
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @le16toh(i8* %40)
  %42 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %43 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %45 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @le16toh(i8* %46)
  %48 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %51 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le32toh(i32 %52)
  %54 = load %struct.btx_hdr*, %struct.btx_hdr** %4, align 8
  %55 = getelementptr inbounds %struct.btx_hdr, %struct.btx_hdr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i32 @readx(i32, %struct.btx_hdr*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i8* @le16toh(i8*) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
