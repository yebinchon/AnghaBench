; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_WriteDNS.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_WriteDNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@INADDR_ANY = common dso_local global i64 0, align 8
@LogIPCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s not modified: All nameservers NAKd\0A\00", align 1
@_PATH_RESCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Primary nameserver set to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\0Anameserver %s\0A\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Secondary nameserver set to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"nameserver %s\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"write(): Failed updating %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"fopen(\22%s\22, \22w\22) failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_WriteDNS(%struct.ipcp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipcp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ipcp* %0, %struct.ipcp** %3, align 8
  %7 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %8 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INADDR_ANY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %18 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INADDR_ANY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i32, i32* @LogIPCP, align 4
  %28 = load i32, i32* @_PATH_RESCONF, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %2, align 4
  br label %173

32:                                               ; preds = %16, %1
  %33 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %34 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INADDR_ANY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %44 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %51 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %49, i64* %55, align 8
  %56 = load i64, i64* @INADDR_ANY, align 8
  %57 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %58 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %56, i64* %62, align 8
  br label %63

63:                                               ; preds = %42, %32
  %64 = call i32 @umask(i32 18)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @_PATH_RESCONF, align 4
  %66 = call i32* @ID0fopen(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %66, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %162

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @umask(i32 %69)
  %71 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %72 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %78 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @fputs(i64 %80, i32* %81)
  br label %83

83:                                               ; preds = %76, %68
  %84 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %85 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @inet_ntoa(i64 %90)
  store i8* %91, i8** %4, align 8
  %92 = load i32, i32* @LogIPCP, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @fprintf(i32* %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %99 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @INADDR_ANY, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %83
  %108 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %109 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @INADDR_NONE, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %107
  %118 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %119 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %126 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %124, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %117
  %134 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %135 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @inet_ntoa(i64 %140)
  store i8* %141, i8** %4, align 8
  %142 = load i32, i32* @LogIPCP, align 4
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %6, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @fprintf(i32* %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %133, %117, %107, %83
  %149 = load i32*, i32** %6, align 8
  %150 = call i64 @fclose(i32* %149)
  %151 = load i64, i64* @EOF, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @LogERROR, align 4
  %155 = load i32, i32* @_PATH_RESCONF, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load i32, i32* @errno, align 4
  %159 = call i32 @strerror(i32 %158)
  %160 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %157, i32 %159)
  store i32 0, i32* %2, align 4
  br label %173

161:                                              ; preds = %148
  br label %172

162:                                              ; preds = %63
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @umask(i32 %163)
  %165 = load i32, i32* @LogERROR, align 4
  %166 = load i32, i32* @_PATH_RESCONF, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load i32, i32* @errno, align 4
  %170 = call i32 @strerror(i32 %169)
  %171 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %168, i32 %170)
  br label %172

172:                                              ; preds = %162, %161
  store i32 1, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %153, %26
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @ID0fopen(i32, i8*) #1

declare dso_local i32 @fputs(i64, i32*) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
