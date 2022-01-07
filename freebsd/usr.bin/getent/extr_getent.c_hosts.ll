; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@IN6ADDRSZ = common dso_local global i32 0, align 4
@RV_OK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDRSZ = common dso_local global i32 0, align 4
@RV_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hosts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* @IN6ADDRSZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8**, i8*** %4, align 8
  %20 = icmp ne i8** %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 @sethostent(i32 1)
  store %struct.hostent* null, %struct.hostent** %6, align 8
  store %struct.hostent* null, %struct.hostent** %5, align 8
  %24 = load i32, i32* @RV_OK, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %31, %27
  %29 = call %struct.hostent* (...) @gethostent()
  store %struct.hostent* %29, %struct.hostent** %5, align 8
  %30 = icmp ne %struct.hostent* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.hostent*, %struct.hostent** %5, align 8
  %33 = call i32 @hostsprint(%struct.hostent* %32)
  br label %28

34:                                               ; preds = %28
  br label %118

35:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %36

36:                                               ; preds = %114, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %117

40:                                               ; preds = %36
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @inet_pton(i32 %41, i8* %46, i8* %14)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i32, i32* @IN6ADDRSZ, align 4
  %51 = load i32, i32* @AF_INET6, align 4
  %52 = call %struct.hostent* @gethostbyaddr(i8* %14, i32 %50, i32 %51)
  store %struct.hostent* %52, %struct.hostent** %6, align 8
  %53 = load %struct.hostent*, %struct.hostent** %6, align 8
  %54 = icmp ne %struct.hostent* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.hostent*, %struct.hostent** %6, align 8
  %57 = call i32 @hostsprint(%struct.hostent* %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %105

59:                                               ; preds = %40
  %60 = load i32, i32* @AF_INET, align 4
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @inet_pton(i32 %60, i8* %65, i8* %14)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load i32, i32* @INADDRSZ, align 4
  %70 = load i32, i32* @AF_INET, align 4
  %71 = call %struct.hostent* @gethostbyaddr(i8* %14, i32 %69, i32 %70)
  store %struct.hostent* %71, %struct.hostent** %5, align 8
  %72 = load %struct.hostent*, %struct.hostent** %5, align 8
  %73 = icmp ne %struct.hostent* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.hostent*, %struct.hostent** %5, align 8
  %76 = call i32 @hostsprint(%struct.hostent* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %104

78:                                               ; preds = %59
  %79 = load i8**, i8*** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @AF_INET6, align 4
  %85 = call %struct.hostent* @gethostbyname2(i8* %83, i32 %84)
  store %struct.hostent* %85, %struct.hostent** %6, align 8
  %86 = load %struct.hostent*, %struct.hostent** %6, align 8
  %87 = icmp ne %struct.hostent* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.hostent*, %struct.hostent** %6, align 8
  %90 = call i32 @hostsprint(%struct.hostent* %89)
  br label %91

91:                                               ; preds = %88, %78
  %92 = load i8**, i8*** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call %struct.hostent* @gethostbyname(i8* %96)
  store %struct.hostent* %97, %struct.hostent** %5, align 8
  %98 = load %struct.hostent*, %struct.hostent** %5, align 8
  %99 = icmp ne %struct.hostent* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.hostent*, %struct.hostent** %5, align 8
  %102 = call i32 @hostsprint(%struct.hostent* %101)
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %58
  %106 = load %struct.hostent*, %struct.hostent** %5, align 8
  %107 = icmp eq %struct.hostent* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.hostent*, %struct.hostent** %6, align 8
  %110 = icmp eq %struct.hostent* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @RV_NOTFOUND, align 4
  store i32 %112, i32* %10, align 4
  br label %117

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %36

117:                                              ; preds = %111, %36
  br label %118

118:                                              ; preds = %117, %34
  %119 = call i32 (...) @endhostent()
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %121)
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sethostent(i32) #2

declare dso_local %struct.hostent* @gethostent(...) #2

declare dso_local i32 @hostsprint(%struct.hostent*) #2

declare dso_local i64 @inet_pton(i32, i8*, i8*) #2

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #2

declare dso_local %struct.hostent* @gethostbyname2(i8*, i32) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @endhostent(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
