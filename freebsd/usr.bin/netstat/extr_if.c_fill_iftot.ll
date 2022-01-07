; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_if.c_fill_iftot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_if.c_fill_iftot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iftot = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifaddrs = type { i32, %struct.TYPE_2__*, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@interface = common dso_local global i64 0, align 8
@ipackets = common dso_local global i32 0, align 4
@ierrors = common dso_local global i32 0, align 4
@iqdrops = common dso_local global i32 0, align 4
@ibytes = common dso_local global i32 0, align 4
@opackets = common dso_local global i32 0, align 4
@oerrors = common dso_local global i32 0, align 4
@oqdrops = common dso_local global i32 0, align 4
@obytes = common dso_local global i32 0, align 4
@collisions = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"interface %s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iftot*)* @fill_iftot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_iftot(%struct.iftot* %0) #0 {
  %2 = alloca %struct.iftot*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  store %struct.iftot* %0, %struct.iftot** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 @getifaddrs(%struct.ifaddrs** %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EX_OSERR, align 4
  %10 = call i32 (i32, i8*, ...) @xo_err(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.iftot*, %struct.iftot** %2, align 8
  %13 = call i32 @bzero(%struct.iftot* %12, i32 36)
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  store %struct.ifaddrs* %14, %struct.ifaddrs** %4, align 8
  br label %15

15:                                               ; preds = %113, %11
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %17 = icmp ne %struct.ifaddrs* %16, null
  br i1 %17, label %18, label %117

18:                                               ; preds = %15
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %20 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_LINK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %113

27:                                               ; preds = %18
  %28 = load i64, i64* @interface, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @interface, align 8
  %35 = call i64 @strcmp(i32 %33, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %39

38:                                               ; preds = %30
  br label %113

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* @ipackets, align 4
  %42 = call i64 @IFA_STAT(i32 %41)
  %43 = load %struct.iftot*, %struct.iftot** %2, align 8
  %44 = getelementptr inbounds %struct.iftot, %struct.iftot* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i32, i32* @ierrors, align 4
  %50 = call i64 @IFA_STAT(i32 %49)
  %51 = load %struct.iftot*, %struct.iftot** %2, align 8
  %52 = getelementptr inbounds %struct.iftot, %struct.iftot* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i32, i32* @iqdrops, align 4
  %58 = call i64 @IFA_STAT(i32 %57)
  %59 = load %struct.iftot*, %struct.iftot** %2, align 8
  %60 = getelementptr inbounds %struct.iftot, %struct.iftot* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i32, i32* @ibytes, align 4
  %66 = call i64 @IFA_STAT(i32 %65)
  %67 = load %struct.iftot*, %struct.iftot** %2, align 8
  %68 = getelementptr inbounds %struct.iftot, %struct.iftot* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load i32, i32* @opackets, align 4
  %74 = call i64 @IFA_STAT(i32 %73)
  %75 = load %struct.iftot*, %struct.iftot** %2, align 8
  %76 = getelementptr inbounds %struct.iftot, %struct.iftot* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load i32, i32* @oerrors, align 4
  %82 = call i64 @IFA_STAT(i32 %81)
  %83 = load %struct.iftot*, %struct.iftot** %2, align 8
  %84 = getelementptr inbounds %struct.iftot, %struct.iftot* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load i32, i32* @oqdrops, align 4
  %90 = call i64 @IFA_STAT(i32 %89)
  %91 = load %struct.iftot*, %struct.iftot** %2, align 8
  %92 = getelementptr inbounds %struct.iftot, %struct.iftot* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i32, i32* @obytes, align 4
  %98 = call i64 @IFA_STAT(i32 %97)
  %99 = load %struct.iftot*, %struct.iftot** %2, align 8
  %100 = getelementptr inbounds %struct.iftot, %struct.iftot* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load i32, i32* @collisions, align 4
  %106 = call i64 @IFA_STAT(i32 %105)
  %107 = load %struct.iftot*, %struct.iftot** %2, align 8
  %108 = getelementptr inbounds %struct.iftot, %struct.iftot* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  br label %113

113:                                              ; preds = %40, %38, %26
  %114 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %115 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %114, i32 0, i32 2
  %116 = load %struct.ifaddrs*, %struct.ifaddrs** %115, align 8
  store %struct.ifaddrs* %116, %struct.ifaddrs** %4, align 8
  br label %15

117:                                              ; preds = %15
  %118 = load i64, i64* @interface, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @EX_DATAERR, align 4
  %125 = load i64, i64* @interface, align 8
  %126 = call i32 (i32, i8*, ...) @xo_err(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %123, %120, %117
  %128 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %129 = call i32 @freeifaddrs(%struct.ifaddrs* %128)
  ret void
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @xo_err(i32, i8*, ...) #1

declare dso_local i32 @bzero(%struct.iftot*, i32) #1

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i64 @IFA_STAT(i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
