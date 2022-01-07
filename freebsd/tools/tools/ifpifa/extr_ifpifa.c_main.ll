; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ifpifa/extr_ifpifa.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ifpifa/extr_ifpifa.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.ifnet = type { i8*, i32, i64, %struct.ifnethead }
%struct.ifnethead = type { i32 }
%union.anon = type { %struct.ifaddr }
%struct.ifaddr = type { i8*, i32, i64, %struct.ifnethead }
%union.anon.0 = type { %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.ether_addr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kvm_openfiles: %s\00", align 1
@nl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"kvm_nlist: %s\00", align 1
@N_IFNET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"kvm_nlist: no namelist\00", align 1
@if_link = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ifa_link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"<Link type %#x>\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"family=%d\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09%s ifa_refcnt=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ifnet, align 8
  %10 = alloca %struct.ifnethead, align 4
  %11 = alloca %union.anon, align 8
  %12 = alloca %union.anon.0, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %14 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32* @kvm_openfiles(i32* null, i32* null, i32* null, i32 %21, i8* %17)
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %0
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  %27 = call i32 @exit(i32 0) #4
  unreachable

28:                                               ; preds = %0
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %31 = call i64 @kvm_nlist(i32* %29, %struct.TYPE_3__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @kvm_geterr(i32* %34)
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %160

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %39 = load i64, i64* @N_IFNET, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %160

46:                                               ; preds = %37
  %47 = load i32*, i32** %2, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %49 = load i64, i64* @N_IFNET, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = bitcast %struct.ifnethead* %10 to i8*
  %54 = call i64 @kread(i32* %47, i64 %52, i8* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %160

57:                                               ; preds = %46
  %58 = call i64 @TAILQ_FIRST(%struct.ifnethead* %10)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %157, %57
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %159

62:                                               ; preds = %59
  %63 = load i32*, i32** %2, align 8
  %64 = load i64, i64* %5, align 8
  %65 = bitcast %struct.ifnet* %9 to i8*
  %66 = call i64 @kread(i32* %63, i64 %64, i8* %65, i32 32)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %160

69:                                               ; preds = %62
  %70 = load i32, i32* @if_link, align 4
  %71 = call i64 @TAILQ_NEXT(%struct.ifnet* %9, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 3
  %76 = call i64 @TAILQ_FIRST(%struct.ifnethead* %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %154, %69
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %156

80:                                               ; preds = %77
  %81 = load i32*, i32** %2, align 8
  %82 = load i64, i64* %7, align 8
  %83 = bitcast %union.anon* %11 to i8*
  %84 = call i64 @kread(i32* %81, i64 %82, i8* %83, i32 32)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %160

87:                                               ; preds = %80
  %88 = bitcast %union.anon* %11 to %struct.ifaddr*
  %89 = bitcast %struct.ifaddr* %88 to %struct.ifnet*
  %90 = load i32, i32* @ifa_link, align 4
  %91 = call i64 @TAILQ_NEXT(%struct.ifnet* %89, i32 %90)
  store i64 %91, i64* %8, align 8
  %92 = bitcast %union.anon* %11 to %struct.ifaddr*
  %93 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i64, i64* %7, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = ptrtoint i8* %95 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = bitcast %union.anon* %11 to i8*
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  %103 = bitcast i8* %102 to %struct.sockaddr*
  %104 = bitcast %union.anon.0* %12 to %struct.sockaddr**
  store %struct.sockaddr* %103, %struct.sockaddr** %104, align 8
  %105 = bitcast %union.anon.0* %12 to %struct.sockaddr**
  %106 = load %struct.sockaddr*, %struct.sockaddr** %105, align 8
  %107 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %142 [
    i32 131, label %109
    i32 133, label %130
    i32 132, label %136
  ]

109:                                              ; preds = %87
  %110 = bitcast %union.anon.0* %12 to %struct.sockaddr_dl**
  %111 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %110, align 8
  %112 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %122 [
    i32 130, label %114
    i32 129, label %114
    i32 128, label %120
  ]

114:                                              ; preds = %109, %109
  %115 = bitcast %union.anon.0* %12 to %struct.sockaddr_dl**
  %116 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %115, align 8
  %117 = call i64 @LLADDR(%struct.sockaddr_dl* %116)
  %118 = inttoptr i64 %117 to %struct.ether_addr*
  %119 = call i32 @ether_ntoa_r(%struct.ether_addr* %118, i8* %20)
  br label %129

120:                                              ; preds = %109
  %121 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %129

122:                                              ; preds = %109
  %123 = trunc i64 %19 to i32
  %124 = bitcast %union.anon.0* %12 to %struct.sockaddr_dl**
  %125 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %124, align 8
  %126 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snprintf(i8* %20, i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %122, %120, %114
  br label %149

130:                                              ; preds = %87
  %131 = bitcast %union.anon.0* %12 to %struct.sockaddr_in**
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %131, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = trunc i64 %19 to i32
  %135 = call i32 @inet_ntop(i32 133, i32* %133, i8* %20, i32 %134)
  br label %149

136:                                              ; preds = %87
  %137 = bitcast %union.anon.0* %12 to %struct.sockaddr_in6**
  %138 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %137, align 8
  %139 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %138, i32 0, i32 0
  %140 = trunc i64 %19 to i32
  %141 = call i32 @inet_ntop(i32 132, i32* %139, i8* %20, i32 %140)
  br label %149

142:                                              ; preds = %87
  %143 = trunc i64 %19 to i32
  %144 = bitcast %union.anon.0* %12 to %struct.sockaddr**
  %145 = load %struct.sockaddr*, %struct.sockaddr** %144, align 8
  %146 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @snprintf(i8* %20, i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %136, %130, %129
  %150 = bitcast %union.anon* %11 to %struct.ifaddr*
  %151 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 %152)
  br label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %7, align 8
  br label %77

156:                                              ; preds = %77
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %6, align 8
  store i64 %158, i64* %5, align 8
  br label %59

159:                                              ; preds = %59
  br label %160

160:                                              ; preds = %159, %86, %68, %56, %44, %33
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @kvm_close(i32* %161)
  store i32 0, i32* %1, align 4
  %163 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %1, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kvm_openfiles(i32*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @kvm_nlist(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @kvm_geterr(i32*) #2

declare dso_local i64 @kread(i32*, i64, i8*, i32) #2

declare dso_local i64 @TAILQ_FIRST(%struct.ifnethead*) #2

declare dso_local i64 @TAILQ_NEXT(%struct.ifnet*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @ether_ntoa_r(%struct.ether_addr*, i8*) #2

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @kvm_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
