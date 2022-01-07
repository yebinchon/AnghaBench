; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_authunix_prot.c_xdr_authunix_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_authunix_prot.c_xdr_authunix_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.xucred = type { i32, i32*, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NGRPS = common dso_local global i32 0, align 4
@ngroups_max = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_authunix_parms(%struct.TYPE_7__* %0, i32* %1, %struct.xucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.xucred* %2, %struct.xucred** %7, align 8
  %15 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XDR_ENCODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = trunc i64 %16 to i32
  %26 = call i32 @getcredhostname(i32* null, i8* %18, i32 %25)
  %27 = call i32 @strlen(i8* %18)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 255, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %11, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %39, i32* %8)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XDR_ENCODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @xdr_opaque(%struct.TYPE_7__* %51, i8* %18, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

57:                                               ; preds = %50
  br label %66

58:                                               ; preds = %44
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i64 @xdr_getpos(%struct.TYPE_7__* %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @RNDUP(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @xdr_setpos(%struct.TYPE_7__* %59, i64 %64)
  br label %66

66:                                               ; preds = %58, %57
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load %struct.xucred*, %struct.xucred** %7, align 8
  %69 = getelementptr inbounds %struct.xucred, %struct.xucred* %68, i32 0, i32 0
  %70 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

74:                                               ; preds = %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load %struct.xucred*, %struct.xucred** %7, align 8
  %77 = getelementptr inbounds %struct.xucred, %struct.xucred* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %75, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

84:                                               ; preds = %74
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XDR_ENCODE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.xucred*, %struct.xucred** %7, align 8
  %92 = getelementptr inbounds %struct.xucred, %struct.xucred* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @NGRPS, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @NGRPS, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %90
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %102, i32* %9)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

107:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %140, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @ngroups_max, align 4
  %116 = add nsw i32 %115, 1
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = load %struct.xucred*, %struct.xucred** %7, align 8
  %121 = getelementptr inbounds %struct.xucred, %struct.xucred* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %119, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %118
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

131:                                              ; preds = %118
  br label %139

132:                                              ; preds = %112
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = call i32 @xdr_uint32_t(%struct.TYPE_7__* %133, i32* %11)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %108

143:                                              ; preds = %108
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XDR_DECODE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* @ngroups_max, align 4
  %153 = add nsw i32 %152, 1
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i32, i32* @ngroups_max, align 4
  %157 = add nsw i32 %156, 1
  %158 = load %struct.xucred*, %struct.xucred** %7, align 8
  %159 = getelementptr inbounds %struct.xucred, %struct.xucred* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %165

160:                                              ; preds = %149
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.xucred*, %struct.xucred** %7, align 8
  %164 = getelementptr inbounds %struct.xucred, %struct.xucred* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %143
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %168

168:                                              ; preds = %166, %136, %129, %105, %82, %72, %55, %42
  %169 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getcredhostname(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xdr_uint32_t(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @xdr_opaque(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @xdr_setpos(%struct.TYPE_7__*, i64) #2

declare dso_local i64 @xdr_getpos(%struct.TYPE_7__*) #2

declare dso_local i64 @RNDUP(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
