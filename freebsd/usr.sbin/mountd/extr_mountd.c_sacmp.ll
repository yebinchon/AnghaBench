; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_sacmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_sacmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*)* @sacmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sacmp(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = call i8* @sa_rawaddr(%struct.sockaddr* %21, i32* %11)
  store i8* %22, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = call i8* @sa_rawaddr(%struct.sockaddr* %25, i32* null)
  store i8* %26, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %3
  store i32 1, i32* %4, align 4
  br label %105

29:                                               ; preds = %24
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %45 [
    i32 128, label %33
  ]

33:                                               ; preds = %29
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = bitcast %struct.sockaddr* %34 to %struct.sockaddr_in6*
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in6*
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %105

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %29, %44
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = icmp eq %struct.sockaddr* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @memcmp(i8* %49, i8* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %105

53:                                               ; preds = %45
  %54 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %53
  %62 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %63 = call i8* @sa_rawaddr(%struct.sockaddr* %62, i32* null)
  store i8* %63, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %53
  store i32 1, i32* %4, align 4
  br label %105

66:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %77, %83
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %90, %96
  %98 = icmp ne i32 %84, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %105

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %67

104:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %99, %65, %48, %43, %28
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i8* @sa_rawaddr(%struct.sockaddr*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
