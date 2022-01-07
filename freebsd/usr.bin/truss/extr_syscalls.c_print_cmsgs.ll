; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_cmsgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_cmsgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64, i8* }
%struct.cmsghdr = type { i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s{level=\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@sysdecode_sockopt_level = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c",type=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c",data=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, %struct.msghdr*)* @print_cmsgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cmsgs(i32* %0, i32 %1, i32 %2, %struct.msghdr* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.cmsghdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.msghdr* %3, %struct.msghdr** %8, align 8
  %16 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %116

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @calloc(i32 1, i64 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @get_struct(i32 %27, i64 %31, i8* %32, i64 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = call i32 @print_pointer(i32* %37, i64 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  br label %116

45:                                               ; preds = %24
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 1, i32* %15, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %52 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %51)
  store %struct.cmsghdr* %52, %struct.cmsghdr** %9, align 8
  br label %53

53:                                               ; preds = %107, %45
  %54 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %55 = icmp ne %struct.cmsghdr* %54, null
  br i1 %55, label %56, label %111

56:                                               ; preds = %53
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %58 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %64 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @sysdecode_sockopt_level, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @print_integer_arg(i32 %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i8* @sysdecode_cmsg_type(i32 %78, i32 %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %56
  %84 = load i8*, i8** %11, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @fputs(i8* %84, i32* %85)
  br label %91

87:                                               ; preds = %56
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %92)
  %94 = load i32, i32* %13, align 4
  switch i32 %94, label %100 [
    i32 128, label %95
  ]

95:                                               ; preds = %91
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %99 = call i32 @print_sctp_cmsg(i32* %96, i32 %97, %struct.cmsghdr* %98)
  br label %104

100:                                              ; preds = %91
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %103 = call i32 @print_gen_cmsg(i32* %101, %struct.cmsghdr* %102)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* %105)
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %104
  %108 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %109 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %110 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %108, %struct.cmsghdr* %109)
  store %struct.cmsghdr* %110, %struct.cmsghdr** %9, align 8
  br label %53

111:                                              ; preds = %53
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* %112)
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %111, %36, %21
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @get_struct(i32, i64, i8*, i64) #1

declare dso_local i32 @print_pointer(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_integer_arg(i32, i32*, i32) #1

declare dso_local i8* @sysdecode_cmsg_type(i32, i32) #1

declare dso_local i32 @print_sctp_cmsg(i32*, i32, %struct.cmsghdr*) #1

declare dso_local i32 @print_gen_cmsg(i32*, %struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
