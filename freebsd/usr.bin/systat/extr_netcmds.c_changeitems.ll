; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_changeitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_changeitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }
%struct.hostent = type { i64 }
%struct.in_addr = type { i64 }

@protos = common dso_local global i64 0, align 8
@TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: unknown host or port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @changeitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @changeitems(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.servent*, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca %struct.in_addr, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %7, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 10)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %2
  br label %20

20:                                               ; preds = %122, %19
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %22

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %54, %38
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isspace(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %40

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  store i8 0, i8* %62, align 1
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %124

72:                                               ; preds = %64
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* @protos, align 8
  %75 = load i64, i64* @TCP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %84

78:                                               ; preds = %72
  %79 = load i64, i64* @protos, align 8
  %80 = load i64, i64* @UDP, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null
  br label %84

84:                                               ; preds = %78, %77
  %85 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %77 ], [ %83, %78 ]
  %86 = call %struct.servent* @getservbyname(i8* %73, i8* %85)
  store %struct.servent* %86, %struct.servent** %8, align 8
  %87 = load %struct.servent*, %struct.servent** %8, align 8
  %88 = icmp ne %struct.servent* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.servent*, %struct.servent** %8, align 8
  %91 = getelementptr inbounds %struct.servent, %struct.servent* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @selectport(i32 %92, i32 %93)
  br label %122

95:                                               ; preds = %84
  %96 = load i8*, i8** %7, align 8
  %97 = call %struct.hostent* @gethostbyname(i8* %96)
  store %struct.hostent* %97, %struct.hostent** %9, align 8
  %98 = load %struct.hostent*, %struct.hostent** %9, align 8
  %99 = icmp eq %struct.hostent* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i8*, i8** %7, align 8
  %102 = call i64 @inet_addr(i8* %101)
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @INADDR_NONE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  br label %122

111:                                              ; preds = %100
  br label %119

112:                                              ; preds = %95
  %113 = load %struct.hostent*, %struct.hostent** %9, align 8
  %114 = getelementptr inbounds %struct.hostent, %struct.hostent* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.in_addr*
  %117 = bitcast %struct.in_addr* %10 to i8*
  %118 = bitcast %struct.in_addr* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 8, i1 false)
  br label %119

119:                                              ; preds = %112, %111
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @selecthost(%struct.in_addr* %10, i32 %120)
  br label %122

122:                                              ; preds = %119, %108, %89
  %123 = load i8*, i8** %5, align 8
  store i8* %123, i8** %7, align 8
  br label %20

124:                                              ; preds = %71
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @free(i8* %125)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @selectport(i32, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @selecthost(%struct.in_addr*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
