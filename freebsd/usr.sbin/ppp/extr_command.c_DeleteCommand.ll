; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_DeleteCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_DeleteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.ncprange = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@ROUTE_DSTMYADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@ROUTE_DSTMYADDR6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@ROUTE_DSTHISADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"HISADDR6\00", align 1
@ROUTE_DSTHISADDR6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@ROUTE_DSTDNS0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@ROUTE_DSTDNS1 = common dso_local global i32 0, align 4
@ROUTE_STATIC = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @DeleteCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeleteCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.ncprange, align 4
  %5 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %216

14:                                               ; preds = %1
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcasecmp(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %14
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i32 @route_IfDelete(%struct.TYPE_12__* %29, i32 0)
  %31 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %32 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = call i32 @route_DeleteAll(i32* %35)
  br label %215

37:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  %38 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %39 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcasecmp(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ncprange_setip4host(%struct.ncprange* %4, i32 %56)
  %58 = load i32, i32* @ROUTE_DSTMYADDR, align 4
  store i32 %58, i32* %5, align 4
  br label %194

59:                                               ; preds = %37
  %60 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcasecmp(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %73 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = call i32 @ncprange_sethost(%struct.ncprange* %4, i32* %77)
  %79 = load i32, i32* @ROUTE_DSTMYADDR6, align 4
  store i32 %79, i32* %5, align 4
  br label %193

80:                                               ; preds = %59
  %81 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @strcasecmp(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %94 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %93, i32 0, i32 2
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ncprange_setip4host(%struct.ncprange* %4, i32 %99)
  %101 = load i32, i32* @ROUTE_DSTHISADDR, align 4
  store i32 %101, i32* %5, align 4
  br label %192

102:                                              ; preds = %80
  %103 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %104 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %107 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @strcasecmp(i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %116 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %115, i32 0, i32 2
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @ncprange_sethost(%struct.ncprange* %4, i32* %120)
  %122 = load i32, i32* @ROUTE_DSTHISADDR6, align 4
  store i32 %122, i32* %5, align 4
  br label %191

123:                                              ; preds = %102
  %124 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %125 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %128 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @strcasecmp(i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %123
  %136 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %137 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %136, i32 0, i32 2
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ncprange_setip4host(%struct.ncprange* %4, i32 %145)
  %147 = load i32, i32* @ROUTE_DSTDNS0, align 4
  store i32 %147, i32* %5, align 4
  br label %190

148:                                              ; preds = %123
  %149 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %150 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %153 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @strcasecmp(i32 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %148
  %161 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %162 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ncprange_setip4host(%struct.ncprange* %4, i32 %170)
  %172 = load i32, i32* @ROUTE_DSTDNS1, align 4
  store i32 %172, i32* %5, align 4
  br label %189

173:                                              ; preds = %148
  %174 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %175 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %174, i32 0, i32 2
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %179 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %182 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ncprange_aton(%struct.ncprange* %4, %struct.TYPE_13__* %177, i32 %186)
  %188 = load i32, i32* @ROUTE_STATIC, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %173, %160
  br label %190

190:                                              ; preds = %189, %135
  br label %191

191:                                              ; preds = %190, %114
  br label %192

192:                                              ; preds = %191, %92
  br label %193

193:                                              ; preds = %192, %71
  br label %194

194:                                              ; preds = %193, %49
  %195 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %196 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %195, i32 0, i32 2
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = load i32, i32* @RTM_DELETE, align 4
  %199 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %200 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %199, i32 0, i32 3
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  %207 = call i32 @rt_Set(%struct.TYPE_12__* %197, i32 %198, %struct.ncprange* %4, i32* null, i32 %206, i32 0)
  %208 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %209 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %208, i32 0, i32 2
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @route_Delete(i32* %212, i32 %213, %struct.ncprange* %4)
  br label %215

215:                                              ; preds = %194, %26
  br label %217

216:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %218

217:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %216
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @route_IfDelete(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @route_DeleteAll(i32*) #1

declare dso_local i32 @ncprange_setip4host(%struct.ncprange*, i32) #1

declare dso_local i32 @ncprange_sethost(%struct.ncprange*, i32*) #1

declare dso_local i32 @ncprange_aton(%struct.ncprange*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @rt_Set(%struct.TYPE_12__*, i32, %struct.ncprange*, i32*, i32, i32) #1

declare dso_local i32 @route_Delete(i32*, i32, %struct.ncprange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
