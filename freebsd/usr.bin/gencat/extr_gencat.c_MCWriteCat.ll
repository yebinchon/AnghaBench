; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCWriteCat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCWriteCat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct._setT* }
%struct._setT = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct._msgT* }
%struct._msgT = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct._msgT* }
%struct.TYPE_5__ = type { %struct._setT* }
%struct._nls_cat_hdr = type { i8*, i8*, i8*, i8*, i8* }
%struct._nls_set_hdr = type { i8*, i8*, i8* }
%struct._nls_msg_hdr = type { i8*, i8*, i8* }

@sethead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@_NLS_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCWriteCat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._nls_cat_hdr*, align 8
  %9 = alloca %struct._nls_set_hdr*, align 8
  %10 = alloca %struct._nls_msg_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._setT*, align 8
  %13 = alloca %struct._msgT*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct._setT*, %struct._setT** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sethead, i32 0, i32 0), align 8
  store %struct._setT* %17, %struct._setT** %12, align 8
  br label %18

18:                                               ; preds = %47, %1
  %19 = load %struct._setT*, %struct._setT** %12, align 8
  %20 = icmp ne %struct._setT* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load %struct._setT*, %struct._setT** %12, align 8
  %25 = getelementptr inbounds %struct._setT, %struct._setT* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct._msgT*, %struct._msgT** %26, align 8
  store %struct._msgT* %27, %struct._msgT** %13, align 8
  br label %28

28:                                               ; preds = %41, %21
  %29 = load %struct._msgT*, %struct._msgT** %13, align 8
  %30 = icmp ne %struct._msgT* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load %struct._msgT*, %struct._msgT** %13, align 8
  %35 = getelementptr inbounds %struct._msgT, %struct._msgT* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load %struct._msgT*, %struct._msgT** %13, align 8
  %43 = getelementptr inbounds %struct._msgT, %struct._msgT* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct._msgT*, %struct._msgT** %44, align 8
  store %struct._msgT* %45, %struct._msgT** %13, align 8
  br label %28

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load %struct._setT*, %struct._setT** %12, align 8
  %49 = getelementptr inbounds %struct._setT, %struct._setT* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct._setT*, %struct._setT** %50, align 8
  store %struct._setT* %51, %struct._setT** %12, align 8
  br label %18

52:                                               ; preds = %18
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 24
  %56 = add i64 40, %55
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 24
  %60 = add i64 %56, %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @xmalloc(i32 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @memset(i8* %67, i8 signext 0, i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to %struct._nls_cat_hdr*
  store %struct._nls_cat_hdr* %71, %struct._nls_cat_hdr** %8, align 8
  %72 = load i32, i32* @_NLS_MAGIC, align 4
  %73 = call i8* @htonl(i32 %72)
  %74 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %8, align 8
  %75 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %8, align 8
  %79 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 40
  %83 = trunc i64 %82 to i32
  %84 = call i8* @htonl(i32 %83)
  %85 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %8, align 8
  %86 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 24
  %90 = trunc i64 %89 to i32
  %91 = call i8* @htonl(i32 %90)
  %92 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %8, align 8
  %93 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 24
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 24
  %100 = add i64 %96, %99
  %101 = trunc i64 %100 to i32
  %102 = call i8* @htonl(i32 %101)
  %103 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %8, align 8
  %104 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 40
  %107 = bitcast i8* %106 to %struct._nls_set_hdr*
  store %struct._nls_set_hdr* %107, %struct._nls_set_hdr** %9, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 40
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 24
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = bitcast i8* %113 to %struct._nls_msg_hdr*
  store %struct._nls_msg_hdr* %114, %struct._nls_msg_hdr** %10, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 40
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 24
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 24
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8* %124, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %125 = load %struct._setT*, %struct._setT** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sethead, i32 0, i32 0), align 8
  store %struct._setT* %125, %struct._setT** %12, align 8
  br label %126

126:                                              ; preds = %199, %52
  %127 = load %struct._setT*, %struct._setT** %12, align 8
  %128 = icmp ne %struct._setT* %127, null
  br i1 %128, label %129, label %204

129:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  %130 = load %struct._setT*, %struct._setT** %12, align 8
  %131 = getelementptr inbounds %struct._setT, %struct._setT* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct._msgT*, %struct._msgT** %132, align 8
  store %struct._msgT* %133, %struct._msgT** %13, align 8
  br label %134

134:                                              ; preds = %174, %129
  %135 = load %struct._msgT*, %struct._msgT** %13, align 8
  %136 = icmp ne %struct._msgT* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %134
  %138 = load %struct._msgT*, %struct._msgT** %13, align 8
  %139 = getelementptr inbounds %struct._msgT, %struct._msgT* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @strlen(i32 %140)
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  %143 = load %struct._msgT*, %struct._msgT** %13, align 8
  %144 = getelementptr inbounds %struct._msgT, %struct._msgT* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @htonl(i32 %145)
  %147 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %10, align 8
  %148 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i8* @htonl(i32 %149)
  %151 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %10, align 8
  %152 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i8* @htonl(i32 %153)
  %155 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %10, align 8
  %156 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load %struct._msgT*, %struct._msgT** %13, align 8
  %159 = getelementptr inbounds %struct._msgT, %struct._msgT* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @memcpy(i8* %157, i32 %160, i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = load i8*, i8** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %11, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  %172 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %10, align 8
  %173 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %172, i32 1
  store %struct._nls_msg_hdr* %173, %struct._nls_msg_hdr** %10, align 8
  br label %174

174:                                              ; preds = %137
  %175 = load %struct._msgT*, %struct._msgT** %13, align 8
  %176 = getelementptr inbounds %struct._msgT, %struct._msgT* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct._msgT*, %struct._msgT** %177, align 8
  store %struct._msgT* %178, %struct._msgT** %13, align 8
  br label %134

179:                                              ; preds = %134
  %180 = load %struct._setT*, %struct._setT** %12, align 8
  %181 = getelementptr inbounds %struct._setT, %struct._setT* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @htonl(i32 %182)
  %184 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %9, align 8
  %185 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i8* @htonl(i32 %186)
  %188 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %9, align 8
  %189 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i8* @htonl(i32 %190)
  %192 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %9, align 8
  %193 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %14, align 4
  %197 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %9, align 8
  %198 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %197, i32 1
  store %struct._nls_set_hdr* %198, %struct._nls_set_hdr** %9, align 8
  br label %199

199:                                              ; preds = %179
  %200 = load %struct._setT*, %struct._setT** %12, align 8
  %201 = getelementptr inbounds %struct._setT, %struct._setT* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load %struct._setT*, %struct._setT** %202, align 8
  store %struct._setT* %203, %struct._setT** %12, align 8
  br label %126

204:                                              ; preds = %126
  %205 = load i32, i32* %2, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @write(i32 %205, i8* %206, i32 %207)
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
