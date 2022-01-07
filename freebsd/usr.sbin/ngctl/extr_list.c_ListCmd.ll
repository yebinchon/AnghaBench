; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_list.c_ListCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_list.c_ListCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**)* }
%struct.ng_mesg = type { i64 }
%struct.namelist = type { i32, %struct.nodeinfo* }
%struct.nodeinfo = type { i32, i8*, i8*, i32 }

@CMDRTN_OK = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTNAMES = common dso_local global i32 0, align 4
@NGM_LISTNODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"send msg\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"recv msg\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"There are %d total %snodes:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"named \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"[%lx]:\00", align 1
@show_cmd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@UNNAMED = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"  Name: %-15s Type: %-15s ID: %08x   Num hooks: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ListCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ListCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ng_mesg*, align 8
  %7 = alloca %struct.namelist*, align 8
  %8 = alloca %struct.nodeinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %16, i32* %12, align 4
  store i32 1, i32* @optind, align 4
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %27 [
    i32 108, label %24
    i32 110, label %25
    i32 63, label %26
  ]

24:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %29

25:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %29

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %22, %26
  %28 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %28, i32* %3, align 4
  br label %168

29:                                               ; preds = %25, %24
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* @optind, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @optind, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %40 [
    i32 0, label %39
  ]

39:                                               ; preds = %30
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %41, i32* %3, align 4
  br label %168

42:                                               ; preds = %39
  %43 = load i32, i32* @csock, align 4
  %44 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @NGM_LISTNAMES, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @NGM_LISTNODES, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i64 @NgSendMsg(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %52, i32* null, i32 0)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %168

58:                                               ; preds = %51
  %59 = load i32, i32* @csock, align 4
  %60 = call i64 @NgAllocRecvMsg(i32 %59, %struct.ng_mesg** %6, i32* null)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %168

65:                                               ; preds = %58
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.namelist*
  store %struct.namelist* %69, %struct.namelist** %7, align 8
  %70 = load %struct.namelist*, %struct.namelist** %7, align 8
  %71 = getelementptr inbounds %struct.namelist, %struct.namelist* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %72, i8* %76)
  %78 = load %struct.namelist*, %struct.namelist** %7, align 8
  %79 = getelementptr inbounds %struct.namelist, %struct.namelist* %78, i32 0, i32 1
  %80 = load %struct.nodeinfo*, %struct.nodeinfo** %79, align 8
  store %struct.nodeinfo* %80, %struct.nodeinfo** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %65
  %84 = load i32, i32* @NG_PATHSIZ, align 4
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %13, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %14, align 8
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %122, %83
  %91 = load %struct.namelist*, %struct.namelist** %7, align 8
  %92 = getelementptr inbounds %struct.namelist, %struct.namelist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = trunc i64 %85 to i32
  %97 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %98 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @snprintf(i8* %87, i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = load i32 (i32, i8**)*, i32 (i32, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @show_cmd, i32 0, i32 0), align 8
  %104 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %105 = call i32 %103(i32 2, i8** %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @CMDRTN_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %123

109:                                              ; preds = %95
  %110 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %111 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %110, i32 1
  store %struct.nodeinfo* %111, %struct.nodeinfo** %8, align 8
  %112 = load %struct.namelist*, %struct.namelist** %7, align 8
  %113 = getelementptr inbounds %struct.namelist, %struct.namelist* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.namelist*, %struct.namelist** %7, align 8
  %117 = getelementptr inbounds %struct.namelist, %struct.namelist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %109
  br label %90

123:                                              ; preds = %108, %90
  %124 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %124)
  br label %164

125:                                              ; preds = %65
  br label %126

126:                                              ; preds = %143, %125
  %127 = load %struct.namelist*, %struct.namelist** %7, align 8
  %128 = getelementptr inbounds %struct.namelist, %struct.namelist* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %126
  %132 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %133 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %139 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** @UNNAMED, align 8
  %142 = call i32 @snprintf(i8* %140, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %145 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %148 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %151 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %154 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* %146, i8* %149, i32 %152, i32 %155)
  %157 = load %struct.nodeinfo*, %struct.nodeinfo** %8, align 8
  %158 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %157, i32 1
  store %struct.nodeinfo* %158, %struct.nodeinfo** %8, align 8
  %159 = load %struct.namelist*, %struct.namelist** %7, align 8
  %160 = getelementptr inbounds %struct.namelist, %struct.namelist* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  br label %126

163:                                              ; preds = %126
  br label %164

164:                                              ; preds = %163, %123
  %165 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %166 = call i32 @free(%struct.ng_mesg* %165)
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %62, %55, %40, %27
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @NgAllocRecvMsg(i32, %struct.ng_mesg**, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
